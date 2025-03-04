=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXTPolicy
  # Route advertisement rules and filtering
  class RouteAdvertisementRule
    # Action to advertise filtered routes to the connected Tier0 gateway. PERMIT: Enables the advertisment DENY: Disables the advertisement 
    attr_accessor :action

    # Network CIDRs to be routed. 
    attr_accessor :subnets

    # Prefix operator to filter subnets. GE prefix operator filters all the routes with prefix length greater than or equal to the subnets configured. EQ prefix operator filter all the routes with prefix length equal to the subnets configured. 
    attr_accessor :prefix_operator

    # Display name should be unique. 
    attr_accessor :name

    # Enable different types of route advertisements. When not specified, routes to IPSec VPN local-endpoint subnets (TIER1_IPSEC_LOCAL_ENDPOINT) are automatically advertised. 
    attr_accessor :route_advertisement_types

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
        :'action' => :'action',
        :'subnets' => :'subnets',
        :'prefix_operator' => :'prefix_operator',
        :'name' => :'name',
        :'route_advertisement_types' => :'route_advertisement_types'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'action' => :'String',
        :'subnets' => :'Array<String>',
        :'prefix_operator' => :'String',
        :'name' => :'String',
        :'route_advertisement_types' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      else
        self.action = 'PERMIT'
      end

      if attributes.has_key?(:'subnets')
        if (value = attributes[:'subnets']).is_a?(Array)
          self.subnets = value
        end
      end

      if attributes.has_key?(:'prefix_operator')
        self.prefix_operator = attributes[:'prefix_operator']
      else
        self.prefix_operator = 'GE'
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'route_advertisement_types')
        if (value = attributes[:'route_advertisement_types']).is_a?(Array)
          self.route_advertisement_types = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action.nil?
        invalid_properties.push('invalid value for "action", action cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action.nil?
      action_validator = EnumAttributeValidator.new('String', ['PERMIT', 'DENY'])
      return false unless action_validator.valid?(@action)
      prefix_operator_validator = EnumAttributeValidator.new('String', ['GE', 'EQ'])
      return false unless prefix_operator_validator.valid?(@prefix_operator)
      return false if @name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ['PERMIT', 'DENY'])
      unless validator.valid?(action)
        fail ArgumentError, 'invalid value for "action", must be one of #{validator.allowable_values}.'
      end
      @action = action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prefix_operator Object to be assigned
    def prefix_operator=(prefix_operator)
      validator = EnumAttributeValidator.new('String', ['GE', 'EQ'])
      unless validator.valid?(prefix_operator)
        fail ArgumentError, 'invalid value for "prefix_operator", must be one of #{validator.allowable_values}.'
      end
      @prefix_operator = prefix_operator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action == o.action &&
          subnets == o.subnets &&
          prefix_operator == o.prefix_operator &&
          name == o.name &&
          route_advertisement_types == o.route_advertisement_types
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, subnets, prefix_operator, name, route_advertisement_types].hash
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
