module VSphereCloud
  class NSXTConfig < Struct.new(:host, :username, :password, :remote_auth, :auth_certificate, :auth_private_key, :default_vif_type, :use_policy_api, :policy_api_migration_mode)
    def self.validate_schema(config)
      return true if config.nil?

      Membrane::SchemaParser.parse do
        common_rules = {
            'host' => String,
            optional('default_vif_type') => enum('PARENT', 'CHILD')}
        if config['username'].nil?
          #using cert authentication
          common_rules.merge! ({
              'auth_certificate' => String,
              'auth_private_key' => String})
        else
          common_rules.merge!({'username' => String,
                               'password' => String,
                               optional('remote_auth') => bool
                             })
        end
        common_rules
      end.validate(config)
    end

    def use_policy_api?
      use_policy_api
    end

    def policy_api_migration_mode?
      !!policy_api_migration_mode
    end
  end

  class Config
    def self.build(config_hash)
      new(config_hash).tap(&:validate)
    end

    SUPPORTED_DISK_TYPES = ['thin', 'preallocated']

    def initialize(config_hash)
      @config = config_hash

      @is_validated = false
    end

    def validate
      return true if @is_validated

      unless config['vcenters'].size == 1
        raise 'vSphere CPI only supports a single vCenter'
      end

      unless config['vcenters'].first['datacenters'].size ==1
        raise 'vSphere CPI only supports a single datacenter'
      end

      default_disk_type = config['vcenters'].first['default_disk_type']

      if default_disk_type.nil?
        raise 'Missing required property: vcenters[0].default_disk_type'
      end

      unless SUPPORTED_DISK_TYPES.include?(default_disk_type)
        raise "Unsupported default_disk_type '#{default_disk_type}'. vSphere CPI only supports a default_disk_type of 'preallocated' or 'thin'"
      end

      pdp = config['vcenters'].first['datacenters'].first['persistent_datastore_pattern']
      pdcp = config['vcenters'].first['datacenters'].first['persistent_datastore_cluster_pattern']
      unless (pdp && !pdp.empty?) || (pdcp && !pdcp.empty?)
        raise "Either property persistent_datastore_pattern or property persistent_datastore_cluster_pattern must be set on vcenters[0].datacenters[0]"
      end

      dp = config['vcenters'].first['datacenters'].first['datastore_pattern']
      dcp = config['vcenters'].first['datacenters'].first['datastore_cluster_pattern']
      unless (dp && !dp.empty?) || (dcp && !dcp.empty?)
        raise "Either property datastore_pattern or property datastore_cluster_pattern must be set on vcenters[0].datacenters[0]"
      end

      validate_schema
      NSXTConfig.validate_schema(config['nsxt'])

      @is_validated = true
    end

    REQUIRED_NSX_OPTIONS = ['address', 'user', 'password']
    NSX_MANIFEST_LOCATION = '`jobs.bosh.properties.vcenter.nsx`'

    def nsx_enabled?
      vcenter['nsx'].nil? == false
    end

    def validate_nsx_options
      if vcenter['nsx'].nil?
        raise "Must specify global NSX config in your director manifest under #{NSX_MANIFEST_LOCATION}"
      end

      missing_properties = []
      REQUIRED_NSX_OPTIONS.each do | option |
        missing_properties << option if vcenter['nsx'][option].nil?
      end

      unless missing_properties.empty?
        missing_properties.map! { |p| "'#{p}'"}
        raise "Must specify the NSX config options #{missing_properties.join(', ')} in your director manifest under #{NSX_MANIFEST_LOCATION}"
      end

      true
    end

    def logger
      @logger ||= Bosh::Clouds::Config.logger
    end

    def soap_log
      if vcenter_http_logging
        config['soap_log'] || config['cpi_log']
      else
        nil
      end
    end

    def vcenter_http_logging
      vcenter['http_logging']
    end

    def agent
      config['agent']
    end

    def vcenter_host
      vcenter['host']
    end

    def vcenter_api_uri
      URI.parse("https://#{vcenter_host}/sdk/vimService")
    end

    def vcenter_user
      vcenter['user']
    end

    def vcenter_password
      vcenter['password']
    end

    def vcenter_default_disk_type
      vcenter['default_disk_type']
    end

    def vcenter_enable_auto_anti_affinity_drs_rules
      vcenter['enable_auto_anti_affinity_drs_rules']
    end

    def datacenter_name
      vcenter_datacenter['name']
    end

    def datacenter_vm_folder
      vcenter_datacenter['vm_folder']
    end

    def datacenter_template_folder
      vcenter_datacenter['template_folder']
    end

    def datacenter_disk_path
      vcenter_datacenter['disk_path']
    end

    def datacenter_datastore_pattern
      vcenter_datacenter['datastore_pattern']
    end

    def datacenter_datastore_cluster_pattern
      vcenter_datacenter['datastore_cluster_pattern']
    end

    def datacenter_persistent_datastore_pattern
      vcenter_datacenter['persistent_datastore_pattern']
    end

    def datacenter_persistent_datastore_cluster_pattern
      vcenter_datacenter['persistent_datastore_cluster_pattern']
    end

    def datacenter_clusters
      @cluster_objs ||= cluster_objs
    end

    def datacenter_use_sub_folder
      datacenter_clusters.any? { |_, cluster| cluster.resource_pool } ||
        !!vcenter_datacenter['use_sub_folder']
    end

    def human_readable_name_enabled?
      vcenter['enable_human_readable_name']
    end

    def nsx_url
      vcenter['nsx']['address']
    end

    def nsx_user
      vcenter['nsx']['user']
    end

    def nsx_password
      vcenter['nsx']['password']
    end

    def upgrade_hw_version
      vcenter['upgrade_hw_version']
    end

    def nsxt
      return nil unless nsxt_enabled?
      NSXTConfig.new(
        vcenter['nsxt']['host'],
        vcenter['nsxt']['username'],
        vcenter['nsxt']['password'],
        vcenter['nsxt']['remote_auth'],
        vcenter['nsxt']['auth_certificate'],
        vcenter['nsxt']['auth_private_key'],
        vcenter['nsxt']['default_vif_type'],
        vcenter['nsxt']['use_policy_api'],
        vcenter['nsxt']['policy_api_migration_mode'],
      )
    end

    def nsxt_enabled?
      !vcenter['nsxt'].nil?
    end

    def pbm_api_uri
      URI.parse("https://#{vcenter_host}/pbm/sdk")
    end

    def vm_storage_policy_name
      vcenter['vm_storage_policy_name']
    end

    private

    attr_reader :config

    def is_validated?
      raise 'Configuration has not been validated' unless @is_validated
    end

    def vcenter
      config['vcenters'].first
    end

    def vcenter_datacenter
      vcenter['datacenters'].first
    end

    def validate_schema
      # Membrane schema for the provided config.
      schema = Membrane::SchemaParser.parse do
        {
          'agent' => dict(String, Object), # passthrough to the agent
          optional('cpi_log') => enum(String, Object),
          optional('soap_log') => enum(String, Object),
          'vcenters' => [{
            'host' => String,
            'user' => String,
            'password' => String,
            optional('http_logging') => bool,
            optional('enable_auto_anti_affinity_drs_rules') => bool,
            optional('upgrade_hw_version') => bool,
            optional('vm_storage_policy_name') => String,
            optional('nsxt') => {
              optional('host') => String,
              optional('username') => String,
              optional('password') => String,
              optional('remote_auth') => bool,
              optional('auth_certificate') => String,
              optional('auth_private_key') => String,
              optional('default_vif_type') => String
            },
            optional('enable_human_readable_name') => bool,
            'datacenters' => [{
              'name' => String,
              'vm_folder' => String,
              'template_folder' => String,
              optional('use_sub_folder') => bool,
              'disk_path' => String,
              optional('datastore_pattern') => String,
              optional('datastore_cluster_pattern') => String,
              optional('persistent_datastore_pattern') => String,
              optional('persistent_datastore_cluster_pattern') => String,
              optional('allow_mixed_datastores') => bool,
              'clusters' => [enum(String, dict(String, {optional('resource_pool') => String}),
              )]
            }]
          }]
        }
      end

      schema.validate(config)
    end

    def cluster_objs
      cluster_objs = {}
      vcenter_datacenter['clusters'].each do |cluster|
        if cluster.is_a?(Hash)
          name = cluster.keys.first
          cluster_objs[name] = ClusterConfig.new(name, cluster[name])
        else
          cluster_objs[cluster] = ClusterConfig.new(cluster, {})
        end
      end
      cluster_objs
    end
  end

end
