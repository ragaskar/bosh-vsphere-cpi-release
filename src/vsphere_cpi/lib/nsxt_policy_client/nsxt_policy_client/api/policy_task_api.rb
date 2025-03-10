=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicyTaskApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel a running export task
    # This operation cancels an export task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [ExportTask]
    def cancel_export_task_cancel(opts = {})
      data, _status_code, _headers = cancel_export_task_cancel_with_http_info(opts)
      data
    end

    # Cancel a running export task
    # This operation cancels an export task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportTask, Fixnum, Hash)>] ExportTask data, response status code and response headers
    def cancel_export_task_cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.cancel_export_task_cancel ...'
      end
      # resource path
      local_var_path = '/infra/settings/firewall/export?action=cancel'

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
        :auth_names => auth_names,
        :return_type => 'ExportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#cancel_export_task_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel a running export task
    # This operation cancels an export task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [ExportTask]
    def cancel_export_task_cancel_0(opts = {})
      data, _status_code, _headers = cancel_export_task_cancel_0_with_http_info(opts)
      data
    end

    # Cancel a running export task
    # This operation cancels an export task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportTask, Fixnum, Hash)>] ExportTask data, response status code and response headers
    def cancel_export_task_cancel_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.cancel_export_task_cancel_0 ...'
      end
      # resource path
      local_var_path = '/global-infra/settings/firewall/export?action=cancel'

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
        :auth_names => auth_names,
        :return_type => 'ExportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#cancel_export_task_cancel_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel a running import task
    # This operation cancels an import task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [ImportTask]
    def cancel_import_task_cancel(opts = {})
      data, _status_code, _headers = cancel_import_task_cancel_with_http_info(opts)
      data
    end

    # Cancel a running import task
    # This operation cancels an import task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportTask, Fixnum, Hash)>] ImportTask data, response status code and response headers
    def cancel_import_task_cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.cancel_import_task_cancel ...'
      end
      # resource path
      local_var_path = '/infra/settings/firewall/import?action=cancel'

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
        :auth_names => auth_names,
        :return_type => 'ImportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#cancel_import_task_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel a running import task
    # This operation cancels an import task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [ImportTask]
    def cancel_import_task_cancel_0(opts = {})
      data, _status_code, _headers = cancel_import_task_cancel_0_with_http_info(opts)
      data
    end

    # Cancel a running import task
    # This operation cancels an import task. Task needs to be in running state. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportTask, Fixnum, Hash)>] ImportTask data, response status code and response headers
    def cancel_import_task_cancel_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.cancel_import_task_cancel_0 ...'
      end
      # resource path
      local_var_path = '/global-infra/settings/firewall/import?action=cancel'

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
        :auth_names => auth_names,
        :return_type => 'ImportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#cancel_import_task_cancel_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Download exported file
    # Download the exported file generated from the last export task. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def download_exported_file_download(opts = {})
      download_exported_file_download_with_http_info(opts)
      nil
    end

    # Download exported file
    # Download the exported file generated from the last export task. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def download_exported_file_download_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.download_exported_file_download ...'
      end
      # resource path
      local_var_path = '/global-infra/settings/firewall/export?action=download'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#download_exported_file_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Download exported file
    # Download the exported file generated from the last export task. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def download_exported_file_download_0(opts = {})
      download_exported_file_download_0_with_http_info(opts)
      nil
    end

    # Download exported file
    # Download the exported file generated from the last export task. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def download_exported_file_download_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.download_exported_file_download_0 ...'
      end
      # resource path
      local_var_path = '/infra/settings/firewall/export?action=download'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#download_exported_file_download_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the information of export task
    # Get the information of the latest export task. 
    # @param [Hash] opts the optional parameters
    # @return [ExportTask]
    def get_export_task(opts = {})
      data, _status_code, _headers = get_export_task_with_http_info(opts)
      data
    end

    # Get the information of export task
    # Get the information of the latest export task. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportTask, Fixnum, Hash)>] ExportTask data, response status code and response headers
    def get_export_task_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.get_export_task ...'
      end
      # resource path
      local_var_path = '/global-infra/settings/firewall/export'

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
        :return_type => 'ExportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#get_export_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the information of export task
    # Get the information of the latest export task. 
    # @param [Hash] opts the optional parameters
    # @return [ExportTask]
    def get_export_task_0(opts = {})
      data, _status_code, _headers = get_export_task_0_with_http_info(opts)
      data
    end

    # Get the information of export task
    # Get the information of the latest export task. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportTask, Fixnum, Hash)>] ExportTask data, response status code and response headers
    def get_export_task_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.get_export_task_0 ...'
      end
      # resource path
      local_var_path = '/infra/settings/firewall/export'

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
        :return_type => 'ExportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#get_export_task_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the information of import task
    # Get the information of the latest import task. 
    # @param [Hash] opts the optional parameters
    # @return [ImportTask]
    def get_import_task(opts = {})
      data, _status_code, _headers = get_import_task_with_http_info(opts)
      data
    end

    # Get the information of import task
    # Get the information of the latest import task. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportTask, Fixnum, Hash)>] ImportTask data, response status code and response headers
    def get_import_task_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.get_import_task ...'
      end
      # resource path
      local_var_path = '/global-infra/settings/firewall/import'

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
        :return_type => 'ImportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#get_import_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the information of import task
    # Get the information of the latest import task. 
    # @param [Hash] opts the optional parameters
    # @return [ImportTask]
    def get_import_task_0(opts = {})
      data, _status_code, _headers = get_import_task_0_with_http_info(opts)
      data
    end

    # Get the information of import task
    # Get the information of the latest import task. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportTask, Fixnum, Hash)>] ImportTask data, response status code and response headers
    def get_import_task_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.get_import_task_0 ...'
      end
      # resource path
      local_var_path = '/infra/settings/firewall/import'

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
        :return_type => 'ImportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#get_import_task_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke export task
    # Invoke export task. There can be only one export task run at any point of time. Hence invocation of another export task will be discarded, when there exist an already running export task. Exported configuration will be in a CSV format. This CSV file will be zipped into a ZIP file, that can be downloaded after the completion of export task. 
    # @param export_request_parameter 
    # @param [Hash] opts the optional parameters
    # @return [ExportTask]
    def invoke_export_task(export_request_parameter, opts = {})
      data, _status_code, _headers = invoke_export_task_with_http_info(export_request_parameter, opts)
      data
    end

    # Invoke export task
    # Invoke export task. There can be only one export task run at any point of time. Hence invocation of another export task will be discarded, when there exist an already running export task. Exported configuration will be in a CSV format. This CSV file will be zipped into a ZIP file, that can be downloaded after the completion of export task. 
    # @param export_request_parameter 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportTask, Fixnum, Hash)>] ExportTask data, response status code and response headers
    def invoke_export_task_with_http_info(export_request_parameter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.invoke_export_task ...'
      end
      # verify the required parameter 'export_request_parameter' is set
      if @api_client.config.client_side_validation && export_request_parameter.nil?
        fail ArgumentError, "Missing the required parameter 'export_request_parameter' when calling PolicyTaskApi.invoke_export_task"
      end
      # resource path
      local_var_path = '/global-infra/settings/firewall/export'

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
      post_body = @api_client.object_to_http_body(export_request_parameter)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#invoke_export_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke export task
    # Invoke export task. There can be only one export task run at any point of time. Hence invocation of another export task will be discarded, when there exist an already running export task. Exported configuration will be in a CSV format. This CSV file will be zipped into a ZIP file, that can be downloaded after the completion of export task. 
    # @param export_request_parameter 
    # @param [Hash] opts the optional parameters
    # @return [ExportTask]
    def invoke_export_task_0(export_request_parameter, opts = {})
      data, _status_code, _headers = invoke_export_task_0_with_http_info(export_request_parameter, opts)
      data
    end

    # Invoke export task
    # Invoke export task. There can be only one export task run at any point of time. Hence invocation of another export task will be discarded, when there exist an already running export task. Exported configuration will be in a CSV format. This CSV file will be zipped into a ZIP file, that can be downloaded after the completion of export task. 
    # @param export_request_parameter 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExportTask, Fixnum, Hash)>] ExportTask data, response status code and response headers
    def invoke_export_task_0_with_http_info(export_request_parameter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTaskApi.invoke_export_task_0 ...'
      end
      # verify the required parameter 'export_request_parameter' is set
      if @api_client.config.client_side_validation && export_request_parameter.nil?
        fail ArgumentError, "Missing the required parameter 'export_request_parameter' when calling PolicyTaskApi.invoke_export_task_0"
      end
      # resource path
      local_var_path = '/infra/settings/firewall/export'

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
      post_body = @api_client.object_to_http_body(export_request_parameter)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExportTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTaskApi#invoke_export_task_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
