=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiUpgradeBundleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upgrade the upgrade coordinator.
    # Upgrade the upgrade coordinator module itself. This call is invoked after user uploads an upgrade bundle. Once this call is invoked, upgrade coordinator stops and gets restarted and target version upgrade coordinator module comes up after restart. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def trigger_uc_upgrade_upgrade_uc(opts = {})
      trigger_uc_upgrade_upgrade_uc_with_http_info(opts)
      nil
    end

    # Upgrade the upgrade coordinator.
    # Upgrade the upgrade coordinator module itself. This call is invoked after user uploads an upgrade bundle. Once this call is invoked, upgrade coordinator stops and gets restarted and target version upgrade coordinator module comes up after restart. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def trigger_uc_upgrade_upgrade_uc_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeBundleApi.trigger_uc_upgrade_upgrade_uc ...'
      end
      # resource path
      local_var_path = '/upgrade?action=upgrade_uc'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeBundleApi#trigger_uc_upgrade_upgrade_uc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
