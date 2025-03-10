=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXT
  # Describes the capacity and current usage of virtual servers, pools and pool members for the given load balancer service. 
  class LbServiceUsage
    # Pool capacity means maximum number of pools which could be configured in the given load balancer service. 
    attr_accessor :pool_capacity

    # The size of load balancer service
    attr_accessor :service_size

    # The severity calculation is based on the largest usage percentage from virtual servers, pools and pool members for one load balancer service. 
    attr_accessor :severity

    # Pool member capacity means maximum number of pool members which could be configured in the given load balancer service. 
    attr_accessor :pool_member_capacity

    # The current number of virtual servers which has been configured in the given load balancer service. 
    attr_accessor :current_virtual_server_count

    # The usage percentage is the largest usage percentage from virtual servers, pools and pool members for the load balancer service. 
    attr_accessor :usage_percentage

    # UUID of load balancer service
    attr_accessor :service_id

    # The current number of pools which has been configured in the given load balancer service. 
    attr_accessor :current_pool_count

    # Virtual server capacity means maximum number of virtual servers which could be configured in the given load balancer service. 
    attr_accessor :virtual_server_capacity

    # The current number of pool members which has been configured in the given load balancer service. 
    attr_accessor :current_pool_member_count

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
        :'pool_capacity' => :'pool_capacity',
        :'service_size' => :'service_size',
        :'severity' => :'severity',
        :'pool_member_capacity' => :'pool_member_capacity',
        :'current_virtual_server_count' => :'current_virtual_server_count',
        :'usage_percentage' => :'usage_percentage',
        :'service_id' => :'service_id',
        :'current_pool_count' => :'current_pool_count',
        :'virtual_server_capacity' => :'virtual_server_capacity',
        :'current_pool_member_count' => :'current_pool_member_count'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'pool_capacity' => :'Integer',
        :'service_size' => :'String',
        :'severity' => :'String',
        :'pool_member_capacity' => :'Integer',
        :'current_virtual_server_count' => :'Integer',
        :'usage_percentage' => :'Float',
        :'service_id' => :'String',
        :'current_pool_count' => :'Integer',
        :'virtual_server_capacity' => :'Integer',
        :'current_pool_member_count' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'pool_capacity')
        self.pool_capacity = attributes[:'pool_capacity']
      end

      if attributes.has_key?(:'service_size')
        self.service_size = attributes[:'service_size']
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'pool_member_capacity')
        self.pool_member_capacity = attributes[:'pool_member_capacity']
      end

      if attributes.has_key?(:'current_virtual_server_count')
        self.current_virtual_server_count = attributes[:'current_virtual_server_count']
      end

      if attributes.has_key?(:'usage_percentage')
        self.usage_percentage = attributes[:'usage_percentage']
      end

      if attributes.has_key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.has_key?(:'current_pool_count')
        self.current_pool_count = attributes[:'current_pool_count']
      end

      if attributes.has_key?(:'virtual_server_capacity')
        self.virtual_server_capacity = attributes[:'virtual_server_capacity']
      end

      if attributes.has_key?(:'current_pool_member_count')
        self.current_pool_member_count = attributes[:'current_pool_member_count']
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
      service_size_validator = EnumAttributeValidator.new('String', ['SMALL', 'MEDIUM', 'LARGE', 'DLB'])
      return false unless service_size_validator.valid?(@service_size)
      severity_validator = EnumAttributeValidator.new('String', ['GREEN', 'ORANGE', 'RED'])
      return false unless severity_validator.valid?(@severity)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_size Object to be assigned
    def service_size=(service_size)
      validator = EnumAttributeValidator.new('String', ['SMALL', 'MEDIUM', 'LARGE', 'DLB'])
      unless validator.valid?(service_size)
        fail ArgumentError, 'invalid value for "service_size", must be one of #{validator.allowable_values}.'
      end
      @service_size = service_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] severity Object to be assigned
    def severity=(severity)
      validator = EnumAttributeValidator.new('String', ['GREEN', 'ORANGE', 'RED'])
      unless validator.valid?(severity)
        fail ArgumentError, 'invalid value for "severity", must be one of #{validator.allowable_values}.'
      end
      @severity = severity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pool_capacity == o.pool_capacity &&
          service_size == o.service_size &&
          severity == o.severity &&
          pool_member_capacity == o.pool_member_capacity &&
          current_virtual_server_count == o.current_virtual_server_count &&
          usage_percentage == o.usage_percentage &&
          service_id == o.service_id &&
          current_pool_count == o.current_pool_count &&
          virtual_server_capacity == o.virtual_server_capacity &&
          current_pool_member_count == o.current_pool_member_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [pool_capacity, service_size, severity, pool_member_capacity, current_virtual_server_count, usage_percentage, service_id, current_pool_count, virtual_server_capacity, current_pool_member_count].hash
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
