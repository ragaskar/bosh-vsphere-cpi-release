=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXT
  class DnsForwarder
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

    # The type of this resource.
    attr_accessor :resource_type

    # The conditional zone forwarders. During matching a zone forwarder, the DNS forwarder will use the conditional fowarder with the longest domain name that matches the query. 
    attr_accessor :conditional_forwarders

    # Specify the LogicalRouter where the DnsForwarder runs. The HA mode of the hosting LogicalRouter must be Active/Standby. 
    attr_accessor :logical_router_id

    # One DNS answer cache entry will consume ~120 bytes. Hence 1 KB cache size can cache ~8 DNS answer entries, and the default 1024 KB cache size can hold ~8k DNS answer entries. 
    attr_accessor :cache_size

    # The default zone forwarder that catches all other domain names except those matched by conditional forwarder zone. 
    attr_accessor :default_forwarder

    # Log level of the DNS forwarder
    attr_accessor :log_level

    # Flag to enable/disable the forwarder
    attr_accessor :enabled

    # The ip address the DNS forwarder listens on. It can be an ip address already owned by the logical-router uplink port or router-link, or a loopback port ip address. But it can not be a downlink port address. User needs to ensure the address is reachable via router or NAT from both client VMs and upstream servers. User will need to create Firewall rules if needed to allow such traffic on a Tier-1 or Tier-0. 
    attr_accessor :listener_ip

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
        :'conditional_forwarders' => :'conditional_forwarders',
        :'logical_router_id' => :'logical_router_id',
        :'cache_size' => :'cache_size',
        :'default_forwarder' => :'default_forwarder',
        :'log_level' => :'log_level',
        :'enabled' => :'enabled',
        :'listener_ip' => :'listener_ip'
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
        :'conditional_forwarders' => :'Array<ConditionalForwarderZone>',
        :'logical_router_id' => :'String',
        :'cache_size' => :'Integer',
        :'default_forwarder' => :'ForwarderZone',
        :'log_level' => :'String',
        :'enabled' => :'BOOLEAN',
        :'listener_ip' => :'String'
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

      if attributes.has_key?(:'conditional_forwarders')
        if (value = attributes[:'conditional_forwarders']).is_a?(Array)
          self.conditional_forwarders = value
        end
      end

      if attributes.has_key?(:'logical_router_id')
        self.logical_router_id = attributes[:'logical_router_id']
      end

      if attributes.has_key?(:'cache_size')
        self.cache_size = attributes[:'cache_size']
      else
        self.cache_size = 1024
      end

      if attributes.has_key?(:'default_forwarder')
        self.default_forwarder = attributes[:'default_forwarder']
      end

      if attributes.has_key?(:'log_level')
        self.log_level = attributes[:'log_level']
      else
        self.log_level = 'INFO'
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = true
      end

      if attributes.has_key?(:'listener_ip')
        self.listener_ip = attributes[:'listener_ip']
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

      if @logical_router_id.nil?
        invalid_properties.push('invalid value for "logical_router_id", logical_router_id cannot be nil.')
      end

      if !@cache_size.nil? && @cache_size > 16777216
        invalid_properties.push('invalid value for "cache_size", must be smaller than or equal to 16777216.')
      end

      if !@cache_size.nil? && @cache_size < 1
        invalid_properties.push('invalid value for "cache_size", must be greater than or equal to 1.')
      end

      if @default_forwarder.nil?
        invalid_properties.push('invalid value for "default_forwarder", default_forwarder cannot be nil.')
      end

      if @listener_ip.nil?
        invalid_properties.push('invalid value for "listener_ip", listener_ip cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @logical_router_id.nil?
      return false if !@cache_size.nil? && @cache_size > 16777216
      return false if !@cache_size.nil? && @cache_size < 1
      return false if @default_forwarder.nil?
      log_level_validator = EnumAttributeValidator.new('String', ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'FATAL'])
      return false unless log_level_validator.valid?(@log_level)
      return false if @listener_ip.nil?
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

    # Custom attribute writer method with validation
    # @param [Object] cache_size Value to be assigned
    def cache_size=(cache_size)
      if !cache_size.nil? && cache_size > 16777216
        fail ArgumentError, 'invalid value for "cache_size", must be smaller than or equal to 16777216.'
      end

      if !cache_size.nil? && cache_size < 1
        fail ArgumentError, 'invalid value for "cache_size", must be greater than or equal to 1.'
      end

      @cache_size = cache_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] log_level Object to be assigned
    def log_level=(log_level)
      validator = EnumAttributeValidator.new('String', ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'FATAL'])
      unless validator.valid?(log_level)
        fail ArgumentError, 'invalid value for "log_level", must be one of #{validator.allowable_values}.'
      end
      @log_level = log_level
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
          conditional_forwarders == o.conditional_forwarders &&
          logical_router_id == o.logical_router_id &&
          cache_size == o.cache_size &&
          default_forwarder == o.default_forwarder &&
          log_level == o.log_level &&
          enabled == o.enabled &&
          listener_ip == o.listener_ip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, conditional_forwarders, logical_router_id, cache_size, default_forwarder, log_level, enabled, listener_ip].hash
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
