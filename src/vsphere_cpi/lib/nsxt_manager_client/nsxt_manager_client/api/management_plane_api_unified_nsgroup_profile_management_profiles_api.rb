=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new IPFIX collector profile
    # Create a new IPFIX collector profile with essential properties.
    # @param ipfix_collector_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [IpfixCollectorUpmProfile]
    def create_ipfix_collector_upm_profile(ipfix_collector_upm_profile, opts = {})
      data, _status_code, _headers = create_ipfix_collector_upm_profile_with_http_info(ipfix_collector_upm_profile, opts)
      data
    end

    # Create a new IPFIX collector profile
    # Create a new IPFIX collector profile with essential properties.
    # @param ipfix_collector_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixCollectorUpmProfile, Fixnum, Hash)>] IpfixCollectorUpmProfile data, response status code and response headers
    def create_ipfix_collector_upm_profile_with_http_info(ipfix_collector_upm_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.create_ipfix_collector_upm_profile ...'
      end
      # verify the required parameter 'ipfix_collector_upm_profile' is set
      if @api_client.config.client_side_validation && ipfix_collector_upm_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_upm_profile' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.create_ipfix_collector_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-collector-profiles'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_collector_upm_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorUpmProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#create_ipfix_collector_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new IPFIX profile
    # Create a new IPFIX profile with essential properties.
    # @param ipfix_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [IpfixUpmProfile]
    def create_ipfix_upm_profile(ipfix_upm_profile, opts = {})
      data, _status_code, _headers = create_ipfix_upm_profile_with_http_info(ipfix_upm_profile, opts)
      data
    end

    # Create a new IPFIX profile
    # Create a new IPFIX profile with essential properties.
    # @param ipfix_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixUpmProfile, Fixnum, Hash)>] IpfixUpmProfile data, response status code and response headers
    def create_ipfix_upm_profile_with_http_info(ipfix_upm_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.create_ipfix_upm_profile ...'
      end
      # verify the required parameter 'ipfix_upm_profile' is set
      if @api_client.config.client_side_validation && ipfix_upm_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_upm_profile' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.create_ipfix_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-profiles'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_upm_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixUpmProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#create_ipfix_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an existing IPFIX collector profile
    # Delete an existing IPFIX collector profile by ID.
    # @param ipfix_collector_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ipfix_collector_upm_profile(ipfix_collector_profile_id, opts = {})
      delete_ipfix_collector_upm_profile_with_http_info(ipfix_collector_profile_id, opts)
      nil
    end

    # Delete an existing IPFIX collector profile
    # Delete an existing IPFIX collector profile by ID.
    # @param ipfix_collector_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ipfix_collector_upm_profile_with_http_info(ipfix_collector_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.delete_ipfix_collector_upm_profile ...'
      end
      # verify the required parameter 'ipfix_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_profile_id' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.delete_ipfix_collector_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-collector-profiles/{ipfix-collector-profile-id}'.sub('{' + 'ipfix-collector-profile-id' + '}', ipfix_collector_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#delete_ipfix_collector_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an existing IPFIX profile
    # Delete an existing IPFIX profile by ID.
    # @param ipfix_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ipfix_upm_profile(ipfix_profile_id, opts = {})
      delete_ipfix_upm_profile_with_http_info(ipfix_profile_id, opts)
      nil
    end

    # Delete an existing IPFIX profile
    # Delete an existing IPFIX profile by ID.
    # @param ipfix_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ipfix_upm_profile_with_http_info(ipfix_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.delete_ipfix_upm_profile ...'
      end
      # verify the required parameter 'ipfix_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_profile_id' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.delete_ipfix_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-profiles/{ipfix-profile-id}'.sub('{' + 'ipfix-profile-id' + '}', ipfix_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#delete_ipfix_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an existing IPFIX collector profile
    # Get an existing IPFIX collector profile by profile ID.
    # @param ipfix_collector_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [IpfixCollectorUpmProfile]
    def get_ipfix_collector_upm_profile(ipfix_collector_profile_id, opts = {})
      data, _status_code, _headers = get_ipfix_collector_upm_profile_with_http_info(ipfix_collector_profile_id, opts)
      data
    end

    # Get an existing IPFIX collector profile
    # Get an existing IPFIX collector profile by profile ID.
    # @param ipfix_collector_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixCollectorUpmProfile, Fixnum, Hash)>] IpfixCollectorUpmProfile data, response status code and response headers
    def get_ipfix_collector_upm_profile_with_http_info(ipfix_collector_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.get_ipfix_collector_upm_profile ...'
      end
      # verify the required parameter 'ipfix_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_profile_id' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.get_ipfix_collector_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-collector-profiles/{ipfix-collector-profile-id}'.sub('{' + 'ipfix-collector-profile-id' + '}', ipfix_collector_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorUpmProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#get_ipfix_collector_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an existing IPFIX profile
    # Get an existing IPFIX profile by profile ID.
    # @param ipfix_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [IpfixUpmProfile]
    def get_ipfix_upm_profile(ipfix_profile_id, opts = {})
      data, _status_code, _headers = get_ipfix_upm_profile_with_http_info(ipfix_profile_id, opts)
      data
    end

    # Get an existing IPFIX profile
    # Get an existing IPFIX profile by profile ID.
    # @param ipfix_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixUpmProfile, Fixnum, Hash)>] IpfixUpmProfile data, response status code and response headers
    def get_ipfix_upm_profile_with_http_info(ipfix_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.get_ipfix_upm_profile ...'
      end
      # verify the required parameter 'ipfix_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_profile_id' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.get_ipfix_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-profiles/{ipfix-profile-id}'.sub('{' + 'ipfix-profile-id' + '}', ipfix_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixUpmProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#get_ipfix_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IPFIX Collector Profies
    # Query IPFIX collector profiles with list parameters. List result can be filtered by profile type defined by IpfixCollectorUpmProfileType. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :profile_types IPFIX Collector Profile Type List
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IpfixCollectorUpmProfileListResult]
    def list_ipfix_collector_upm_profiles(opts = {})
      data, _status_code, _headers = list_ipfix_collector_upm_profiles_with_http_info(opts)
      data
    end

    # List IPFIX Collector Profies
    # Query IPFIX collector profiles with list parameters. List result can be filtered by profile type defined by IpfixCollectorUpmProfileType. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :profile_types IPFIX Collector Profile Type List
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IpfixCollectorUpmProfileListResult, Fixnum, Hash)>] IpfixCollectorUpmProfileListResult data, response status code and response headers
    def list_ipfix_collector_upm_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.list_ipfix_collector_upm_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.list_ipfix_collector_upm_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.list_ipfix_collector_upm_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipfix-collector-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'profile_types'] = opts[:'profile_types'] if !opts[:'profile_types'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorUpmProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#list_ipfix_collector_upm_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IPFIX Profies
    # Query IPFIX profiles with list parameters. List result can be filtered by profile type defined by IpfixUpmProfileType. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :applied_to_entity_id ID of Entity Applied with Profile
    # @option opts [String] :applied_to_entity_type Supported Entity Types
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :profile_types IPFIX Profile Type List
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IpfixUpmProfileListResult]
    def list_ipfix_upm_profiles(opts = {})
      data, _status_code, _headers = list_ipfix_upm_profiles_with_http_info(opts)
      data
    end

    # List IPFIX Profies
    # Query IPFIX profiles with list parameters. List result can be filtered by profile type defined by IpfixUpmProfileType. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :applied_to_entity_id ID of Entity Applied with Profile
    # @option opts [String] :applied_to_entity_type Supported Entity Types
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :profile_types IPFIX Profile Type List
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IpfixUpmProfileListResult, Fixnum, Hash)>] IpfixUpmProfileListResult data, response status code and response headers
    def list_ipfix_upm_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.list_ipfix_upm_profiles ...'
      end
      if @api_client.config.client_side_validation && opts[:'applied_to_entity_type'] && !['LogicalPort', 'LogicalSwitch', 'NSGroup'].include?(opts[:'applied_to_entity_type'])
        fail ArgumentError, 'invalid value for "applied_to_entity_type", must be one of LogicalPort, LogicalSwitch, NSGroup'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.list_ipfix_upm_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.list_ipfix_upm_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipfix-profiles'

      # query parameters
      query_params = {}
      query_params[:'applied_to_entity_id'] = opts[:'applied_to_entity_id'] if !opts[:'applied_to_entity_id'].nil?
      query_params[:'applied_to_entity_type'] = opts[:'applied_to_entity_type'] if !opts[:'applied_to_entity_type'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'profile_types'] = opts[:'profile_types'] if !opts[:'profile_types'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixUpmProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#list_ipfix_upm_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an existing IPFIX collector profile
    # Update an existing IPFIX collector profile with profile ID and modified properties. 
    # @param ipfix_collector_profile_id 
    # @param ipfix_collector_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [IpfixCollectorUpmProfile]
    def update_ipfix_collector_upm_profile(ipfix_collector_profile_id, ipfix_collector_upm_profile, opts = {})
      data, _status_code, _headers = update_ipfix_collector_upm_profile_with_http_info(ipfix_collector_profile_id, ipfix_collector_upm_profile, opts)
      data
    end

    # Update an existing IPFIX collector profile
    # Update an existing IPFIX collector profile with profile ID and modified properties. 
    # @param ipfix_collector_profile_id 
    # @param ipfix_collector_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixCollectorUpmProfile, Fixnum, Hash)>] IpfixCollectorUpmProfile data, response status code and response headers
    def update_ipfix_collector_upm_profile_with_http_info(ipfix_collector_profile_id, ipfix_collector_upm_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.update_ipfix_collector_upm_profile ...'
      end
      # verify the required parameter 'ipfix_collector_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_collector_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_profile_id' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.update_ipfix_collector_upm_profile"
      end
      # verify the required parameter 'ipfix_collector_upm_profile' is set
      if @api_client.config.client_side_validation && ipfix_collector_upm_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_upm_profile' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.update_ipfix_collector_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-collector-profiles/{ipfix-collector-profile-id}'.sub('{' + 'ipfix-collector-profile-id' + '}', ipfix_collector_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_collector_upm_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorUpmProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#update_ipfix_collector_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an existing IPFIX profile
    # Update an existing IPFIX profile with profile ID and modified properties. 
    # @param ipfix_profile_id 
    # @param ipfix_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [IpfixUpmProfile]
    def update_ipfix_upm_profile(ipfix_profile_id, ipfix_upm_profile, opts = {})
      data, _status_code, _headers = update_ipfix_upm_profile_with_http_info(ipfix_profile_id, ipfix_upm_profile, opts)
      data
    end

    # Update an existing IPFIX profile
    # Update an existing IPFIX profile with profile ID and modified properties. 
    # @param ipfix_profile_id 
    # @param ipfix_upm_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixUpmProfile, Fixnum, Hash)>] IpfixUpmProfile data, response status code and response headers
    def update_ipfix_upm_profile_with_http_info(ipfix_profile_id, ipfix_upm_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.update_ipfix_upm_profile ...'
      end
      # verify the required parameter 'ipfix_profile_id' is set
      if @api_client.config.client_side_validation && ipfix_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_profile_id' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.update_ipfix_upm_profile"
      end
      # verify the required parameter 'ipfix_upm_profile' is set
      if @api_client.config.client_side_validation && ipfix_upm_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_upm_profile' when calling ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi.update_ipfix_upm_profile"
      end
      # resource path
      local_var_path = '/ipfix-profiles/{ipfix-profile-id}'.sub('{' + 'ipfix-profile-id' + '}', ipfix_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_upm_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixUpmProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUnifiedNsgroupProfileManagementProfilesApi#update_ipfix_upm_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
