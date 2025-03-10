=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXT
  # Runtime status information of the fabric node.
  class NodeStatus
    # Indicates the fabric node's MP&lt;-&gt;MPA channel connectivity status, UP, DOWN, UNKNOWN.
    attr_accessor :mpa_connectivity_status

    # Details, if any, about the current LCP&lt;-&gt;CCP channel connectivity status of the fabric node.
    attr_accessor :lcp_connectivity_status_details

    # Details, if any, about the current MP&lt;-&gt;MPA channel connectivity status of the fabric node.
    attr_accessor :mpa_connectivity_status_details

    # HostNode external id
    attr_accessor :external_id

    # Software version of the fabric node.
    attr_accessor :software_version

    # Indicates the fabric node's status of maintenance mode, OFF, ENTERING, ON, EXITING.
    attr_accessor :maintenance_mode

    # Is true if inventory sync is paused else false
    attr_accessor :inventory_sync_paused

    # Node status properties
    attr_accessor :system_status

    # Inventory sync auto re-enable target time, in epoch milis
    attr_accessor :inventory_sync_reenable_time

    # Indicates the fabric node's LCP&lt;-&gt;CCP channel connectivity status, UP, DOWN, DEGRADED, UNKNOWN.
    attr_accessor :lcp_connectivity_status

    # Timestamp of the last heartbeat status change, in epoch milliseconds.
    attr_accessor :last_heartbeat_timestamp

    # Timestamp of the last successful update of Inventory, in epoch milliseconds.
    attr_accessor :last_sync_time

    # This enum specifies the current nsx install state for host node or current deployment and ready state for edge node. The ready status 'NODE_READY' indicates whether edge node is ready to become a transport node. The status 'EDGE_CONFIG_ERROR' indicates that edge hardware or underlying host is not supported. After all fabric level operations are done for an edge node, this value indicates transport node related configuration issues and state as relevant. 
    attr_accessor :host_node_deployment_status

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mpa_connectivity_status' => :'mpa_connectivity_status',
        :'lcp_connectivity_status_details' => :'lcp_connectivity_status_details',
        :'mpa_connectivity_status_details' => :'mpa_connectivity_status_details',
        :'external_id' => :'external_id',
        :'software_version' => :'software_version',
        :'maintenance_mode' => :'maintenance_mode',
        :'inventory_sync_paused' => :'inventory_sync_paused',
        :'system_status' => :'system_status',
        :'inventory_sync_reenable_time' => :'inventory_sync_reenable_time',
        :'lcp_connectivity_status' => :'lcp_connectivity_status',
        :'last_heartbeat_timestamp' => :'last_heartbeat_timestamp',
        :'last_sync_time' => :'last_sync_time',
        :'host_node_deployment_status' => :'host_node_deployment_status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'mpa_connectivity_status' => :'String',
        :'lcp_connectivity_status_details' => :'Array<ControlConnStatus>',
        :'mpa_connectivity_status_details' => :'String',
        :'external_id' => :'String',
        :'software_version' => :'String',
        :'maintenance_mode' => :'String',
        :'inventory_sync_paused' => :'BOOLEAN',
        :'system_status' => :'NodeStatusProperties',
        :'inventory_sync_reenable_time' => :'Integer',
        :'lcp_connectivity_status' => :'String',
        :'last_heartbeat_timestamp' => :'Integer',
        :'last_sync_time' => :'Integer',
        :'host_node_deployment_status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'mpa_connectivity_status')
        self.mpa_connectivity_status = attributes[:'mpa_connectivity_status']
      end

      if attributes.has_key?(:'lcp_connectivity_status_details')
        if (value = attributes[:'lcp_connectivity_status_details']).is_a?(Array)
          self.lcp_connectivity_status_details = value
        end
      end

      if attributes.has_key?(:'mpa_connectivity_status_details')
        self.mpa_connectivity_status_details = attributes[:'mpa_connectivity_status_details']
      end

      if attributes.has_key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.has_key?(:'software_version')
        self.software_version = attributes[:'software_version']
      end

      if attributes.has_key?(:'maintenance_mode')
        self.maintenance_mode = attributes[:'maintenance_mode']
      end

      if attributes.has_key?(:'inventory_sync_paused')
        self.inventory_sync_paused = attributes[:'inventory_sync_paused']
      end

      if attributes.has_key?(:'system_status')
        self.system_status = attributes[:'system_status']
      end

      if attributes.has_key?(:'inventory_sync_reenable_time')
        self.inventory_sync_reenable_time = attributes[:'inventory_sync_reenable_time']
      end

      if attributes.has_key?(:'lcp_connectivity_status')
        self.lcp_connectivity_status = attributes[:'lcp_connectivity_status']
      else
        self.lcp_connectivity_status = 'UNKNOWN'
      end

      if attributes.has_key?(:'last_heartbeat_timestamp')
        self.last_heartbeat_timestamp = attributes[:'last_heartbeat_timestamp']
      end

      if attributes.has_key?(:'last_sync_time')
        self.last_sync_time = attributes[:'last_sync_time']
      end

      if attributes.has_key?(:'host_node_deployment_status')
        self.host_node_deployment_status = attributes[:'host_node_deployment_status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      mpa_connectivity_status_validator = EnumAttributeValidator.new('String', ['UP', 'DOWN', 'UNKNOWN'])
      return false unless mpa_connectivity_status_validator.valid?(@mpa_connectivity_status)
      maintenance_mode_validator = EnumAttributeValidator.new('String', ['OFF', 'ENTERING', 'ON', 'EXITING'])
      return false unless maintenance_mode_validator.valid?(@maintenance_mode)
      lcp_connectivity_status_validator = EnumAttributeValidator.new('String', ['UP', 'DOWN', 'DEGRADED', 'UNKNOWN'])
      return false unless lcp_connectivity_status_validator.valid?(@lcp_connectivity_status)
      host_node_deployment_status_validator = EnumAttributeValidator.new('String', ['NOT_PREPARED', 'INSTALL_IN_PROGRESS', 'INSTALL_FAILED', 'INSTALL_SUCCESSFUL', 'UNINSTALL_IN_PROGRESS', 'UNINSTALL_FAILED', 'UNINSTALL_SUCCESSFUL', 'UNINSTALL_SCHEDULED', 'UPGRADE_IN_PROGRESS', 'UPGRADE_FAILED', 'PENDING_UPGRADE', 'NOT_AVAILABLE', 'VM_DEPLOYMENT_QUEUED', 'VM_DEPLOYMENT_IN_PROGRESS', 'VM_DEPLOYMENT_FAILED', 'VM_POWER_ON_IN_PROGRESS', 'VM_POWER_ON_FAILED', 'REGISTRATION_PENDING', 'NODE_NOT_READY', 'NODE_READY', 'VM_POWER_OFF_IN_PROGRESS', 'VM_POWER_OFF_FAILED', 'VM_UNDEPLOY_IN_PROGRESS', 'VM_UNDEPLOY_FAILED', 'VM_UNDEPLOY_SUCCESSFUL', 'EDGE_CONFIG_ERROR', 'VM_DEPLOYMENT_RESTARTED', 'REGISTRATION_FAILED', 'HOST_DISCONNECTED', 'POWERED_OFF', 'TRANSPORT_NODE_SYNC_PENDING', 'TRANSPORT_NODE_CONFIGURATION_MISSING', 'EDGE_HARDWARE_NOT_SUPPORTED', 'MULTIPLE_OVERLAY_TZS_NOT_SUPPORTED', 'TN_OVERLAY_TZ_IN_USE_BY_EDGE_CLUSTER', 'TZ_ENDPOINTS_NOT_SPECIFIED', 'NO_PNIC_PREPARED_IN_EDGE', 'APPLIANCE_INTERNAL_ERROR', 'VTEP_DHCP_NOT_SUPPORTED', 'UNSUPPORTED_HOST_SWITCH_PROFILE', 'UPLINK_HOST_SWITCH_PROFILE_NOT_SPECIFIED', 'HOSTSWITCH_PROFILE_NOT_FOUND', 'LLDP_SEND_ENABLED_NOT_SUPPORTED', 'UNSUPPORTED_NAMED_TEAMING_POLICY', 'MULTIPLE_UPLINKS_IN_NAMED_TEAMING_NOT_SUPPORTED_IF_UPLINK_IN_DEFAULT_TEAMING', 'LBSRCID_NOT_SUPPORTED_FOR_EDGE_VM', 'LACP_NOT_SUPPORTED_FOR_EDGE_VM', 'STANDBY_UPLINKS_NOT_SUPPORTED_FOR_EDGE_VM', 'MULTIPLE_ACTIVE_UPLINKS_NOT_SUPPORTED_FOR_EDGE', 'UNSUPPORTED_LACP_LB_ALGO_FOR_NODE', 'EDGE_NODE_VERSION_NOT_SUPPORTED', 'NO_PNIC_SPECIFIED_IN_TN', 'INVALID_PNIC_DEVICE_NAME', 'TRANSPORT_NODE_READY', 'UNSUPPORTED_DEFAULT_TEAMING_POLICY', 'MPA_DISCONNECTED', 'VM_NETWORK_EDIT_PENDING', 'VM_RENAME_PENDING', 'VM_CONFIG_EDIT_PENDING', 'VM_NETWORK_EDIT_FAILED', 'VM_RENAME_FAILED', 'VM_CONFIG_EDIT_FAILED', 'VM_CONFIG_DISCREPANCY', 'VM_NODE_REFRESH_FAILED', 'VM_PLACEMENT_REFRESH_FAILED'])
      return false unless host_node_deployment_status_validator.valid?(@host_node_deployment_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mpa_connectivity_status Object to be assigned
    def mpa_connectivity_status=(mpa_connectivity_status)
      validator = EnumAttributeValidator.new('String', ['UP', 'DOWN', 'UNKNOWN'])
      unless validator.valid?(mpa_connectivity_status)
        fail ArgumentError, 'invalid value for "mpa_connectivity_status", must be one of #{validator.allowable_values}.'
      end
      @mpa_connectivity_status = mpa_connectivity_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maintenance_mode Object to be assigned
    def maintenance_mode=(maintenance_mode)
      validator = EnumAttributeValidator.new('String', ['OFF', 'ENTERING', 'ON', 'EXITING'])
      unless validator.valid?(maintenance_mode)
        fail ArgumentError, 'invalid value for "maintenance_mode", must be one of #{validator.allowable_values}.'
      end
      @maintenance_mode = maintenance_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lcp_connectivity_status Object to be assigned
    def lcp_connectivity_status=(lcp_connectivity_status)
      validator = EnumAttributeValidator.new('String', ['UP', 'DOWN', 'DEGRADED', 'UNKNOWN'])
      unless validator.valid?(lcp_connectivity_status)
        fail ArgumentError, 'invalid value for "lcp_connectivity_status", must be one of #{validator.allowable_values}.'
      end
      @lcp_connectivity_status = lcp_connectivity_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] host_node_deployment_status Object to be assigned
    def host_node_deployment_status=(host_node_deployment_status)
      validator = EnumAttributeValidator.new('String', ['NOT_PREPARED', 'INSTALL_IN_PROGRESS', 'INSTALL_FAILED', 'INSTALL_SUCCESSFUL', 'UNINSTALL_IN_PROGRESS', 'UNINSTALL_FAILED', 'UNINSTALL_SUCCESSFUL', 'UNINSTALL_SCHEDULED', 'UPGRADE_IN_PROGRESS', 'UPGRADE_FAILED', 'PENDING_UPGRADE', 'NOT_AVAILABLE', 'VM_DEPLOYMENT_QUEUED', 'VM_DEPLOYMENT_IN_PROGRESS', 'VM_DEPLOYMENT_FAILED', 'VM_POWER_ON_IN_PROGRESS', 'VM_POWER_ON_FAILED', 'REGISTRATION_PENDING', 'NODE_NOT_READY', 'NODE_READY', 'VM_POWER_OFF_IN_PROGRESS', 'VM_POWER_OFF_FAILED', 'VM_UNDEPLOY_IN_PROGRESS', 'VM_UNDEPLOY_FAILED', 'VM_UNDEPLOY_SUCCESSFUL', 'EDGE_CONFIG_ERROR', 'VM_DEPLOYMENT_RESTARTED', 'REGISTRATION_FAILED', 'HOST_DISCONNECTED', 'POWERED_OFF', 'TRANSPORT_NODE_SYNC_PENDING', 'TRANSPORT_NODE_CONFIGURATION_MISSING', 'EDGE_HARDWARE_NOT_SUPPORTED', 'MULTIPLE_OVERLAY_TZS_NOT_SUPPORTED', 'TN_OVERLAY_TZ_IN_USE_BY_EDGE_CLUSTER', 'TZ_ENDPOINTS_NOT_SPECIFIED', 'NO_PNIC_PREPARED_IN_EDGE', 'APPLIANCE_INTERNAL_ERROR', 'VTEP_DHCP_NOT_SUPPORTED', 'UNSUPPORTED_HOST_SWITCH_PROFILE', 'UPLINK_HOST_SWITCH_PROFILE_NOT_SPECIFIED', 'HOSTSWITCH_PROFILE_NOT_FOUND', 'LLDP_SEND_ENABLED_NOT_SUPPORTED', 'UNSUPPORTED_NAMED_TEAMING_POLICY', 'MULTIPLE_UPLINKS_IN_NAMED_TEAMING_NOT_SUPPORTED_IF_UPLINK_IN_DEFAULT_TEAMING', 'LBSRCID_NOT_SUPPORTED_FOR_EDGE_VM', 'LACP_NOT_SUPPORTED_FOR_EDGE_VM', 'STANDBY_UPLINKS_NOT_SUPPORTED_FOR_EDGE_VM', 'MULTIPLE_ACTIVE_UPLINKS_NOT_SUPPORTED_FOR_EDGE', 'UNSUPPORTED_LACP_LB_ALGO_FOR_NODE', 'EDGE_NODE_VERSION_NOT_SUPPORTED', 'NO_PNIC_SPECIFIED_IN_TN', 'INVALID_PNIC_DEVICE_NAME', 'TRANSPORT_NODE_READY', 'UNSUPPORTED_DEFAULT_TEAMING_POLICY', 'MPA_DISCONNECTED', 'VM_NETWORK_EDIT_PENDING', 'VM_RENAME_PENDING', 'VM_CONFIG_EDIT_PENDING', 'VM_NETWORK_EDIT_FAILED', 'VM_RENAME_FAILED', 'VM_CONFIG_EDIT_FAILED', 'VM_CONFIG_DISCREPANCY', 'VM_NODE_REFRESH_FAILED', 'VM_PLACEMENT_REFRESH_FAILED'])
      unless validator.valid?(host_node_deployment_status)
        fail ArgumentError, 'invalid value for "host_node_deployment_status", must be one of #{validator.allowable_values}.'
      end
      @host_node_deployment_status = host_node_deployment_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          mpa_connectivity_status == o.mpa_connectivity_status &&
          lcp_connectivity_status_details == o.lcp_connectivity_status_details &&
          mpa_connectivity_status_details == o.mpa_connectivity_status_details &&
          external_id == o.external_id &&
          software_version == o.software_version &&
          maintenance_mode == o.maintenance_mode &&
          inventory_sync_paused == o.inventory_sync_paused &&
          system_status == o.system_status &&
          inventory_sync_reenable_time == o.inventory_sync_reenable_time &&
          lcp_connectivity_status == o.lcp_connectivity_status &&
          last_heartbeat_timestamp == o.last_heartbeat_timestamp &&
          last_sync_time == o.last_sync_time &&
          host_node_deployment_status == o.host_node_deployment_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [mpa_connectivity_status, lcp_connectivity_status_details, mpa_connectivity_status_details, external_id, software_version, maintenance_mode, inventory_sync_paused, system_status, inventory_sync_reenable_time, lcp_connectivity_status, last_heartbeat_timestamp, last_sync_time, host_node_deployment_status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
