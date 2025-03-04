=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXT
  class RuleState
    # Gives details of state of desired configuration. Additional enums with more details on progress/success/error states are sent for edge node. The success states are NODE_READY and TRANSPORT_NODE_READY, pending states are {VM_DEPLOYMENT_QUEUED, VM_DEPLOYMENT_IN_PROGRESS, REGISTRATION_PENDING} and other values indicate failures. \"in_sync\" state indicates that the desired configuration has been received by the host to which it applies, but is not yet in effect. When the configuration is actually in effect, the state will change to \"success\". Please note, failed state is deprecated. 
    attr_accessor :state

    # Array of configuration state of various sub systems
    attr_accessor :details

    # Error code
    attr_accessor :failure_code

    # Error message in case of failure
    attr_accessor :failure_message

    # This attribute represents revision number of rule's desired state.
    attr_accessor :revision_desired

    # Pending changes to be realized.
    attr_accessor :pending_change_list

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
        :'state' => :'state',
        :'details' => :'details',
        :'failure_code' => :'failure_code',
        :'failure_message' => :'failure_message',
        :'revision_desired' => :'revision_desired',
        :'pending_change_list' => :'pending_change_list'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'state' => :'String',
        :'details' => :'Array<ConfigurationStateElement>',
        :'failure_code' => :'Integer',
        :'failure_message' => :'String',
        :'revision_desired' => :'Integer',
        :'pending_change_list' => :'Array<PendingChange>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'details')
        if (value = attributes[:'details']).is_a?(Array)
          self.details = value
        end
      end

      if attributes.has_key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.has_key?(:'failure_message')
        self.failure_message = attributes[:'failure_message']
      end

      if attributes.has_key?(:'revision_desired')
        self.revision_desired = attributes[:'revision_desired']
      end

      if attributes.has_key?(:'pending_change_list')
        if (value = attributes[:'pending_change_list']).is_a?(Array)
          self.pending_change_list = value
        end
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
      state_validator = EnumAttributeValidator.new('String', ['pending', 'in_progress', 'success', 'failed', 'partial_success', 'orphaned', 'unknown', 'error', 'in_sync', 'NOT_AVAILABLE', 'VM_DEPLOYMENT_QUEUED', 'VM_DEPLOYMENT_IN_PROGRESS', 'VM_DEPLOYMENT_FAILED', 'VM_POWER_ON_IN_PROGRESS', 'VM_POWER_ON_FAILED', 'REGISTRATION_PENDING', 'NODE_NOT_READY', 'NODE_READY', 'VM_POWER_OFF_IN_PROGRESS', 'VM_POWER_OFF_FAILED', 'VM_UNDEPLOY_IN_PROGRESS', 'VM_UNDEPLOY_FAILED', 'VM_UNDEPLOY_SUCCESSFUL', 'EDGE_CONFIG_ERROR', 'VM_DEPLOYMENT_RESTARTED', 'REGISTRATION_FAILED', 'TRANSPORT_NODE_SYNC_PENDING', 'TRANSPORT_NODE_CONFIGURATION_MISSING', 'EDGE_HARDWARE_NOT_SUPPORTED', 'MULTIPLE_OVERLAY_TZS_NOT_SUPPORTED', 'TN_OVERLAY_TZ_IN_USE_BY_EDGE_CLUSTER', 'TZ_ENDPOINTS_NOT_SPECIFIED', 'NO_PNIC_PREPARED_IN_EDGE', 'APPLIANCE_INTERNAL_ERROR', 'VTEP_DHCP_NOT_SUPPORTED', 'UNSUPPORTED_HOST_SWITCH_PROFILE', 'UPLINK_HOST_SWITCH_PROFILE_NOT_SPECIFIED', 'HOSTSWITCH_PROFILE_NOT_FOUND', 'LLDP_SEND_ENABLED_NOT_SUPPORTED', 'UNSUPPORTED_NAMED_TEAMING_POLICY', 'LBSRCID_NOT_SUPPORTED_FOR_EDGE_VM', 'LACP_NOT_SUPPORTED_FOR_EDGE_VM', 'STANDBY_UPLINKS_NOT_SUPPORTED_FOR_EDGE_VM', 'MULTIPLE_ACTIVE_UPLINKS_NOT_SUPPORTED_FOR_EDGE', 'UNSUPPORTED_LACP_LB_ALGO_FOR_NODE', 'EDGE_NODE_VERSION_NOT_SUPPORTED', 'NO_PNIC_SPECIFIED_IN_TN', 'INVALID_PNIC_DEVICE_NAME', 'TRANSPORT_NODE_READY', 'VM_NETWORK_EDIT_PENDING', 'UNSUPPORTED_DEFAULT_TEAMING_POLICY', 'MPA_DISCONNECTED', 'VM_RENAME_PENDING', 'VM_CONFIG_EDIT_PENDING', 'VM_NETWORK_EDIT_FAILED', 'VM_RENAME_FAILED', 'VM_CONFIG_EDIT_FAILED', 'VM_CONFIG_DISCREPANCY', 'VM_NODE_REFRESH_FAILED', 'VM_PLACEMENT_REFRESH_FAILED'])
      return false unless state_validator.valid?(@state)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['pending', 'in_progress', 'success', 'failed', 'partial_success', 'orphaned', 'unknown', 'error', 'in_sync', 'NOT_AVAILABLE', 'VM_DEPLOYMENT_QUEUED', 'VM_DEPLOYMENT_IN_PROGRESS', 'VM_DEPLOYMENT_FAILED', 'VM_POWER_ON_IN_PROGRESS', 'VM_POWER_ON_FAILED', 'REGISTRATION_PENDING', 'NODE_NOT_READY', 'NODE_READY', 'VM_POWER_OFF_IN_PROGRESS', 'VM_POWER_OFF_FAILED', 'VM_UNDEPLOY_IN_PROGRESS', 'VM_UNDEPLOY_FAILED', 'VM_UNDEPLOY_SUCCESSFUL', 'EDGE_CONFIG_ERROR', 'VM_DEPLOYMENT_RESTARTED', 'REGISTRATION_FAILED', 'TRANSPORT_NODE_SYNC_PENDING', 'TRANSPORT_NODE_CONFIGURATION_MISSING', 'EDGE_HARDWARE_NOT_SUPPORTED', 'MULTIPLE_OVERLAY_TZS_NOT_SUPPORTED', 'TN_OVERLAY_TZ_IN_USE_BY_EDGE_CLUSTER', 'TZ_ENDPOINTS_NOT_SPECIFIED', 'NO_PNIC_PREPARED_IN_EDGE', 'APPLIANCE_INTERNAL_ERROR', 'VTEP_DHCP_NOT_SUPPORTED', 'UNSUPPORTED_HOST_SWITCH_PROFILE', 'UPLINK_HOST_SWITCH_PROFILE_NOT_SPECIFIED', 'HOSTSWITCH_PROFILE_NOT_FOUND', 'LLDP_SEND_ENABLED_NOT_SUPPORTED', 'UNSUPPORTED_NAMED_TEAMING_POLICY', 'LBSRCID_NOT_SUPPORTED_FOR_EDGE_VM', 'LACP_NOT_SUPPORTED_FOR_EDGE_VM', 'STANDBY_UPLINKS_NOT_SUPPORTED_FOR_EDGE_VM', 'MULTIPLE_ACTIVE_UPLINKS_NOT_SUPPORTED_FOR_EDGE', 'UNSUPPORTED_LACP_LB_ALGO_FOR_NODE', 'EDGE_NODE_VERSION_NOT_SUPPORTED', 'NO_PNIC_SPECIFIED_IN_TN', 'INVALID_PNIC_DEVICE_NAME', 'TRANSPORT_NODE_READY', 'VM_NETWORK_EDIT_PENDING', 'UNSUPPORTED_DEFAULT_TEAMING_POLICY', 'MPA_DISCONNECTED', 'VM_RENAME_PENDING', 'VM_CONFIG_EDIT_PENDING', 'VM_NETWORK_EDIT_FAILED', 'VM_RENAME_FAILED', 'VM_CONFIG_EDIT_FAILED', 'VM_CONFIG_DISCREPANCY', 'VM_NODE_REFRESH_FAILED', 'VM_PLACEMENT_REFRESH_FAILED'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          state == o.state &&
          details == o.details &&
          failure_code == o.failure_code &&
          failure_message == o.failure_message &&
          revision_desired == o.revision_desired &&
          pending_change_list == o.pending_change_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [state, details, failure_code, failure_message, revision_desired, pending_change_list].hash
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
