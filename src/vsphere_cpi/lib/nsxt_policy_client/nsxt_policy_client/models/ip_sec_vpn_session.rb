=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXTPolicy
  # VPN session defines connection between local and peer endpoint. Until VPN session is defined configuration is not realized.
  class IPSecVpnSession
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # A Policy Based VPN requires to define protect rules that match   local and peer subnets. IPSec security associations is   negotiated for each pair of local and peer subnet. A Route Based VPN is more flexible, more powerful and recommended over   policy based VPN. IP Tunnel port is created and all traffic routed via   tunnel port is protected. Routes can be configured statically   or can be learned through BGP. A route based VPN is must for establishing   redundant VPN session to remote site. 
    attr_accessor :resource_type

    # Absolute path of this object
    attr_accessor :path

    # Path of its parent
    attr_accessor :parent_path

    # This is a UUID generated by the GM/LM to uniquely identify entites in a federated environment. For entities that are stretched across multiple sites, the same ID will be used on all the stretched sites. 
    attr_accessor :unique_id

    # Path relative from its parent
    attr_accessor :relative_path

    # subtree for this type within policy tree containing nested elements. 
    attr_accessor :children

    # Global intent objects cannot be modified by the user. However, certain global intent objects can be overridden locally by use of this property. In such cases, the overridden local values take precedence over the globally defined values for the properties. 
    attr_accessor :overridden

    # Intent objects are not directly deleted from the system when a delete is invoked on them. They are marked for deletion and only when all the realized entities for that intent object gets deleted, the intent object is deleted. Objects that are marked for deletion are not returned in GET call. One can use the search API to get these objects. 
    attr_accessor :marked_for_delete

    # IPSec Pre-shared key. Maximum length of this field is 128 characters.
    attr_accessor :psk

    # Policy path referencing Dead Peer Detection (DPD) profile. Default is set to system default profile.
    attr_accessor :dpd_profile_path

    # Policy path referencing IKE profile to be used. Default is set according to system default profile.
    attr_accessor :ike_profile_path

    # Enable/Disable IPSec VPN session.
    attr_accessor :enabled

    # Connection initiation mode used by local endpoint to establish ike connection with peer site. INITIATOR - In this mode local endpoint initiates tunnel setup and will also respond to incoming tunnel setup requests from peer gateway. RESPOND_ONLY - In this mode, local endpoint shall only respond to incoming tunnel setup requests. It shall not initiate the tunnel setup. ON_DEMAND - In this mode local endpoint will initiate tunnel creation once first packet matching the policy rule is received and will also respond to incoming initiation request. 
    attr_accessor :connection_initiation_mode

    # Policy path referencing Local endpoint.
    attr_accessor :local_endpoint_path

    # Policy path referencing Tunnel profile to be used. Default is set to system default profile.
    attr_accessor :tunnel_profile_path

    # Compliance suite. 
    attr_accessor :compliance_suite

    # TCP Maximum Segment Size Clamping Direction and Value. 
    attr_accessor :tcp_mss_clamping

    # Peer authentication mode. PSK - In this mode a secret key shared between local and peer sites is to be used for authentication. The secret key can be a string with a maximum length of 128 characters. CERTIFICATE - In this mode a certificate defined at the global level is to be used for authentication. 
    attr_accessor :authentication_mode

    # Peer ID to uniquely identify the peer site. The peer ID is the public IP address of the remote device terminating the VPN tunnel. When NAT is configured for the peer, enter the private IP address of the peer.
    attr_accessor :peer_id

    # Public IPV4 address of the remote device terminating the VPN connection.
    attr_accessor :peer_address

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
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_revision' => :'_revision',
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'path' => :'path',
        :'parent_path' => :'parent_path',
        :'unique_id' => :'unique_id',
        :'relative_path' => :'relative_path',
        :'children' => :'children',
        :'overridden' => :'overridden',
        :'marked_for_delete' => :'marked_for_delete',
        :'psk' => :'psk',
        :'dpd_profile_path' => :'dpd_profile_path',
        :'ike_profile_path' => :'ike_profile_path',
        :'enabled' => :'enabled',
        :'connection_initiation_mode' => :'connection_initiation_mode',
        :'local_endpoint_path' => :'local_endpoint_path',
        :'tunnel_profile_path' => :'tunnel_profile_path',
        :'compliance_suite' => :'compliance_suite',
        :'tcp_mss_clamping' => :'tcp_mss_clamping',
        :'authentication_mode' => :'authentication_mode',
        :'peer_id' => :'peer_id',
        :'peer_address' => :'peer_address'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_system_owned' => :'BOOLEAN',
        :'display_name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<Tag>',
        :'_create_user' => :'String',
        :'_protection' => :'String',
        :'_create_time' => :'Integer',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'path' => :'String',
        :'parent_path' => :'String',
        :'unique_id' => :'String',
        :'relative_path' => :'String',
        :'children' => :'Array<ChildPolicyConfigResource>',
        :'overridden' => :'BOOLEAN',
        :'marked_for_delete' => :'BOOLEAN',
        :'psk' => :'String',
        :'dpd_profile_path' => :'String',
        :'ike_profile_path' => :'String',
        :'enabled' => :'BOOLEAN',
        :'connection_initiation_mode' => :'String',
        :'local_endpoint_path' => :'String',
        :'tunnel_profile_path' => :'String',
        :'compliance_suite' => :'String',
        :'tcp_mss_clamping' => :'TcpMaximumSegmentSizeClamping',
        :'authentication_mode' => :'String',
        :'peer_id' => :'String',
        :'peer_address' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'parent_path')
        self.parent_path = attributes[:'parent_path']
      end

      if attributes.has_key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end

      if attributes.has_key?(:'relative_path')
        self.relative_path = attributes[:'relative_path']
      end

      if attributes.has_key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end

      if attributes.has_key?(:'overridden')
        self.overridden = attributes[:'overridden']
      else
        self.overridden = false
      end

      if attributes.has_key?(:'marked_for_delete')
        self.marked_for_delete = attributes[:'marked_for_delete']
      else
        self.marked_for_delete = false
      end

      if attributes.has_key?(:'psk')
        self.psk = attributes[:'psk']
      end

      if attributes.has_key?(:'dpd_profile_path')
        self.dpd_profile_path = attributes[:'dpd_profile_path']
      end

      if attributes.has_key?(:'ike_profile_path')
        self.ike_profile_path = attributes[:'ike_profile_path']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = true
      end

      if attributes.has_key?(:'connection_initiation_mode')
        self.connection_initiation_mode = attributes[:'connection_initiation_mode']
      else
        self.connection_initiation_mode = 'INITIATOR'
      end

      if attributes.has_key?(:'local_endpoint_path')
        self.local_endpoint_path = attributes[:'local_endpoint_path']
      end

      if attributes.has_key?(:'tunnel_profile_path')
        self.tunnel_profile_path = attributes[:'tunnel_profile_path']
      end

      if attributes.has_key?(:'compliance_suite')
        self.compliance_suite = attributes[:'compliance_suite']
      end

      if attributes.has_key?(:'tcp_mss_clamping')
        self.tcp_mss_clamping = attributes[:'tcp_mss_clamping']
      end

      if attributes.has_key?(:'authentication_mode')
        self.authentication_mode = attributes[:'authentication_mode']
      else
        self.authentication_mode = 'PSK'
      end

      if attributes.has_key?(:'peer_id')
        self.peer_id = attributes[:'peer_id']
      end

      if attributes.has_key?(:'peer_address')
        self.peer_address = attributes[:'peer_address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 255.')
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 1024.')
      end

      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @local_endpoint_path.nil?
        invalid_properties.push('invalid value for "local_endpoint_path", local_endpoint_path cannot be nil.')
      end

      if @peer_id.nil?
        invalid_properties.push('invalid value for "peer_id", peer_id cannot be nil.')
      end

      if @peer_address.nil?
        invalid_properties.push('invalid value for "peer_address", peer_address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ['PolicyBasedIPSecVpnSession', 'RouteBasedIPSecVpnSession'])
      return false unless resource_type_validator.valid?(@resource_type)
      connection_initiation_mode_validator = EnumAttributeValidator.new('String', ['INITIATOR', 'RESPOND_ONLY', 'ON_DEMAND'])
      return false unless connection_initiation_mode_validator.valid?(@connection_initiation_mode)
      return false if @local_endpoint_path.nil?
      compliance_suite_validator = EnumAttributeValidator.new('String', ['CNSA', 'SUITE_B_GCM_128', 'SUITE_B_GCM_256', 'PRIME', 'FOUNDATION', 'FIPS', 'NONE'])
      return false unless compliance_suite_validator.valid?(@compliance_suite)
      authentication_mode_validator = EnumAttributeValidator.new('String', ['PSK', 'CERTIFICATE'])
      return false unless authentication_mode_validator.valid?(@authentication_mode)
      return false if @peer_id.nil?
      return false if @peer_address.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)
      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "display_name", the character length must be smaller than or equal to 255.'
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 1024.'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ['PolicyBasedIPSecVpnSession', 'RouteBasedIPSecVpnSession'])
      unless validator.valid?(resource_type)
        fail ArgumentError, 'invalid value for "resource_type", must be one of #{validator.allowable_values}.'
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connection_initiation_mode Object to be assigned
    def connection_initiation_mode=(connection_initiation_mode)
      validator = EnumAttributeValidator.new('String', ['INITIATOR', 'RESPOND_ONLY', 'ON_DEMAND'])
      unless validator.valid?(connection_initiation_mode)
        fail ArgumentError, 'invalid value for "connection_initiation_mode", must be one of #{validator.allowable_values}.'
      end
      @connection_initiation_mode = connection_initiation_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compliance_suite Object to be assigned
    def compliance_suite=(compliance_suite)
      validator = EnumAttributeValidator.new('String', ['CNSA', 'SUITE_B_GCM_128', 'SUITE_B_GCM_256', 'PRIME', 'FOUNDATION', 'FIPS', 'NONE'])
      unless validator.valid?(compliance_suite)
        fail ArgumentError, 'invalid value for "compliance_suite", must be one of #{validator.allowable_values}.'
      end
      @compliance_suite = compliance_suite
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_mode Object to be assigned
    def authentication_mode=(authentication_mode)
      validator = EnumAttributeValidator.new('String', ['PSK', 'CERTIFICATE'])
      unless validator.valid?(authentication_mode)
        fail ArgumentError, 'invalid value for "authentication_mode", must be one of #{validator.allowable_values}.'
      end
      @authentication_mode = authentication_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _revision == o._revision &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          path == o.path &&
          parent_path == o.parent_path &&
          unique_id == o.unique_id &&
          relative_path == o.relative_path &&
          children == o.children &&
          overridden == o.overridden &&
          marked_for_delete == o.marked_for_delete &&
          psk == o.psk &&
          dpd_profile_path == o.dpd_profile_path &&
          ike_profile_path == o.ike_profile_path &&
          enabled == o.enabled &&
          connection_initiation_mode == o.connection_initiation_mode &&
          local_endpoint_path == o.local_endpoint_path &&
          tunnel_profile_path == o.tunnel_profile_path &&
          compliance_suite == o.compliance_suite &&
          tcp_mss_clamping == o.tcp_mss_clamping &&
          authentication_mode == o.authentication_mode &&
          peer_id == o.peer_id &&
          peer_address == o.peer_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, path, parent_path, unique_id, relative_path, children, overridden, marked_for_delete, psk, dpd_profile_path, ike_profile_path, enabled, connection_initiation_mode, local_endpoint_path, tunnel_profile_path, compliance_suite, tcp_mss_clamping, authentication_mode, peer_id, peer_address].hash
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
        temp_model = NSXTPolicy.const_get(type).new
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
