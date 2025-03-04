=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiDashboardApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new View.
    # Creates a new View.
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [View]
    def create_view(view, opts = {})
      data, _status_code, _headers = create_view_with_http_info(view, opts)
      data
    end

    # Creates a new View.
    # Creates a new View.
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [Array<(View, Fixnum, Hash)>] View data, response status code and response headers
    def create_view_with_http_info(view, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.create_view ...'
      end
      # verify the required parameter 'view' is set
      if @api_client.config.client_side_validation && view.nil?
        fail ArgumentError, "Missing the required parameter 'view' when calling ManagementPlaneApiDashboardApi.create_view"
      end
      # resource path
      local_var_path = '/ui-views'

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
      post_body = @api_client.object_to_http_body(view)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'View')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#create_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new Widget Configuration.
    # Creates a new Widget Configuration and adds it to the specified view. Supported resource_types are LabelValueConfiguration, DonutConfiguration, GridConfiguration, StatsConfiguration, MultiWidgetConfiguration, GraphConfiguration and ContainerConfiguration.  Note: Expressions should be given in a single line. If an expression spans   multiple lines, then form the expression in a single line. For label-value pairs, expressions are evaluated as follows:   a. First, render configurations are evaluated in their order of      appearance in the widget config. The 'field' is evaluated at the end.   b. Second, when render configuration is provided then the order of      evaluation is      1. If expressions provided in 'condition' and 'display value' are         well-formed and free of runtime-errors such as 'null pointers' and         evaluates to 'true'; Then remaining render configurations are not         evaluated, and the current render configuration's 'display value'         is taken as the final value.      2. If expression provided in 'condition' of render configuration is         false, then next render configuration is evaluated.      3. Finally, 'field' is evaluated only when every render configuration         evaluates to false and no error occurs during steps 1 and 2 above.  If an error occurs during evaluation of render configuration, then an   error message is shown. The display value corresponding to that label is   not shown and evaluation of the remaining render configurations continues   to collect and show all the error messages (marked with the 'Label' for   identification) as 'Error_Messages: {}'.  If during evaluation of expressions for any label-value pair an error   occurs, then it is marked with error. The errors are shown in the report,   along with the label value pairs that are error-free.  Important: For elements that take expressions, strings should be provided   by escaping them with a back-slash. These elements are - condition, field,   tooltip text and render_configuration's display_value. 
    # @param view_id 
    # @param widget_configuration 
    # @param [Hash] opts the optional parameters
    # @return [WidgetConfiguration]
    def create_widget_configuration(view_id, widget_configuration, opts = {})
      data, _status_code, _headers = create_widget_configuration_with_http_info(view_id, widget_configuration, opts)
      data
    end

    # Creates a new Widget Configuration.
    # Creates a new Widget Configuration and adds it to the specified view. Supported resource_types are LabelValueConfiguration, DonutConfiguration, GridConfiguration, StatsConfiguration, MultiWidgetConfiguration, GraphConfiguration and ContainerConfiguration.  Note: Expressions should be given in a single line. If an expression spans   multiple lines, then form the expression in a single line. For label-value pairs, expressions are evaluated as follows:   a. First, render configurations are evaluated in their order of      appearance in the widget config. The &#39;field&#39; is evaluated at the end.   b. Second, when render configuration is provided then the order of      evaluation is      1. If expressions provided in &#39;condition&#39; and &#39;display value&#39; are         well-formed and free of runtime-errors such as &#39;null pointers&#39; and         evaluates to &#39;true&#39;; Then remaining render configurations are not         evaluated, and the current render configuration&#39;s &#39;display value&#39;         is taken as the final value.      2. If expression provided in &#39;condition&#39; of render configuration is         false, then next render configuration is evaluated.      3. Finally, &#39;field&#39; is evaluated only when every render configuration         evaluates to false and no error occurs during steps 1 and 2 above.  If an error occurs during evaluation of render configuration, then an   error message is shown. The display value corresponding to that label is   not shown and evaluation of the remaining render configurations continues   to collect and show all the error messages (marked with the &#39;Label&#39; for   identification) as &#39;Error_Messages: {}&#39;.  If during evaluation of expressions for any label-value pair an error   occurs, then it is marked with error. The errors are shown in the report,   along with the label value pairs that are error-free.  Important: For elements that take expressions, strings should be provided   by escaping them with a back-slash. These elements are - condition, field,   tooltip text and render_configuration&#39;s display_value. 
    # @param view_id 
    # @param widget_configuration 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WidgetConfiguration, Fixnum, Hash)>] WidgetConfiguration data, response status code and response headers
    def create_widget_configuration_with_http_info(view_id, widget_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.create_widget_configuration ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.create_widget_configuration"
      end
      # verify the required parameter 'widget_configuration' is set
      if @api_client.config.client_side_validation && widget_configuration.nil?
        fail ArgumentError, "Missing the required parameter 'widget_configuration' when calling ManagementPlaneApiDashboardApi.create_widget_configuration"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}/widgetconfigurations'.sub('{' + 'view-id' + '}', view_id.to_s)

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
      post_body = @api_client.object_to_http_body(widget_configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WidgetConfiguration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#create_widget_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete View
    # Delete View
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delet_view(view_id, opts = {})
      delet_view_with_http_info(view_id, opts)
      nil
    end

    # Delete View
    # Delete View
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delet_view_with_http_info(view_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.delet_view ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.delet_view"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}'.sub('{' + 'view-id' + '}', view_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#delet_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Widget Configuration
    # Detaches widget from a given view. If the widget is no longer part of any view, then it will be purged. 
    # @param view_id 
    # @param widgetconfiguration_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_widget_configuration(view_id, widgetconfiguration_id, opts = {})
      delete_widget_configuration_with_http_info(view_id, widgetconfiguration_id, opts)
      nil
    end

    # Delete Widget Configuration
    # Detaches widget from a given view. If the widget is no longer part of any view, then it will be purged. 
    # @param view_id 
    # @param widgetconfiguration_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_widget_configuration_with_http_info(view_id, widgetconfiguration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.delete_widget_configuration ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.delete_widget_configuration"
      end
      # verify the required parameter 'widgetconfiguration_id' is set
      if @api_client.config.client_side_validation && widgetconfiguration_id.nil?
        fail ArgumentError, "Missing the required parameter 'widgetconfiguration_id' when calling ManagementPlaneApiDashboardApi.delete_widget_configuration"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}/widgetconfigurations/{widgetconfiguration-id}'.sub('{' + 'view-id' + '}', view_id.to_s).sub('{' + 'widgetconfiguration-id' + '}', widgetconfiguration_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#delete_widget_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns View Information
    # Returns Information about a specific View. 
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [View]
    def get_view(view_id, opts = {})
      data, _status_code, _headers = get_view_with_http_info(view_id, opts)
      data
    end

    # Returns View Information
    # Returns Information about a specific View. 
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(View, Fixnum, Hash)>] View data, response status code and response headers
    def get_view_with_http_info(view_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.get_view ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.get_view"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}'.sub('{' + 'view-id' + '}', view_id.to_s)

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
        :return_type => 'View')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#get_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns Widget Configuration Information
    # Returns Information about a specific Widget Configuration. 
    # @param view_id 
    # @param widgetconfiguration_id 
    # @param [Hash] opts the optional parameters
    # @return [WidgetConfiguration]
    def get_widget_configuration(view_id, widgetconfiguration_id, opts = {})
      data, _status_code, _headers = get_widget_configuration_with_http_info(view_id, widgetconfiguration_id, opts)
      data
    end

    # Returns Widget Configuration Information
    # Returns Information about a specific Widget Configuration. 
    # @param view_id 
    # @param widgetconfiguration_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WidgetConfiguration, Fixnum, Hash)>] WidgetConfiguration data, response status code and response headers
    def get_widget_configuration_with_http_info(view_id, widgetconfiguration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.get_widget_configuration ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.get_widget_configuration"
      end
      # verify the required parameter 'widgetconfiguration_id' is set
      if @api_client.config.client_side_validation && widgetconfiguration_id.nil?
        fail ArgumentError, "Missing the required parameter 'widgetconfiguration_id' when calling ManagementPlaneApiDashboardApi.get_widget_configuration"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}/widgetconfigurations/{widgetconfiguration-id}'.sub('{' + 'view-id' + '}', view_id.to_s).sub('{' + 'widgetconfiguration-id' + '}', widgetconfiguration_id.to_s)

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
        :return_type => 'WidgetConfiguration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#get_widget_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the Views based on query criteria defined in ViewQueryParameters.
    # If no query params are specified then all the views entitled for the user are returned. The views to which a user is entitled to include the views created by the user and the shared views. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag The tag for which associated views to be queried.
    # @option opts [String] :view_ids Ids of the Views
    # @option opts [String] :widget_id Id of widget configuration
    # @return [ViewList]
    def list_views(opts = {})
      data, _status_code, _headers = list_views_with_http_info(opts)
      data
    end

    # Returns the Views based on query criteria defined in ViewQueryParameters.
    # If no query params are specified then all the views entitled for the user are returned. The views to which a user is entitled to include the views created by the user and the shared views. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag The tag for which associated views to be queried.
    # @option opts [String] :view_ids Ids of the Views
    # @option opts [String] :widget_id Id of widget configuration
    # @return [Array<(ViewList, Fixnum, Hash)>] ViewList data, response status code and response headers
    def list_views_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.list_views ...'
      end
      if @api_client.config.client_side_validation && !opts[:'view_ids'].nil? && opts[:'view_ids'].to_s.length > 8192
        fail ArgumentError, 'invalid value for "opts[:"view_ids"]" when calling ManagementPlaneApiDashboardApi.list_views, the character length must be smaller than or equal to 8192.'
      end

      if @api_client.config.client_side_validation && !opts[:'widget_id'].nil? && opts[:'widget_id'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"widget_id"]" when calling ManagementPlaneApiDashboardApi.list_views, the character length must be smaller than or equal to 255.'
      end

      # resource path
      local_var_path = '/ui-views'

      # query parameters
      query_params = {}
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'view_ids'] = opts[:'view_ids'] if !opts[:'view_ids'].nil?
      query_params[:'widget_id'] = opts[:'widget_id'] if !opts[:'widget_id'].nil?

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
        :return_type => 'ViewList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#list_views\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the Widget Configurations based on query criteria defined in WidgetQueryParameters.
    # If no query params are specified then all the Widget Configurations of the specified view are returned. 
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :container Id of the container
    # @option opts [String] :widget_ids Ids of the WidgetConfigurations
    # @return [WidgetConfigurationList]
    def list_widget_configurations(view_id, opts = {})
      data, _status_code, _headers = list_widget_configurations_with_http_info(view_id, opts)
      data
    end

    # Returns the Widget Configurations based on query criteria defined in WidgetQueryParameters.
    # If no query params are specified then all the Widget Configurations of the specified view are returned. 
    # @param view_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :container Id of the container
    # @option opts [String] :widget_ids Ids of the WidgetConfigurations
    # @return [Array<(WidgetConfigurationList, Fixnum, Hash)>] WidgetConfigurationList data, response status code and response headers
    def list_widget_configurations_with_http_info(view_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.list_widget_configurations ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.list_widget_configurations"
      end
      if @api_client.config.client_side_validation && !opts[:'container'].nil? && opts[:'container'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"container"]" when calling ManagementPlaneApiDashboardApi.list_widget_configurations, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'widget_ids'].nil? && opts[:'widget_ids'].to_s.length > 8192
        fail ArgumentError, 'invalid value for "opts[:"widget_ids"]" when calling ManagementPlaneApiDashboardApi.list_widget_configurations, the character length must be smaller than or equal to 8192.'
      end

      # resource path
      local_var_path = '/ui-views/{view-id}/widgetconfigurations'.sub('{' + 'view-id' + '}', view_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'container'] = opts[:'container'] if !opts[:'container'].nil?
      query_params[:'widget_ids'] = opts[:'widget_ids'] if !opts[:'widget_ids'].nil?

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
        :return_type => 'WidgetConfigurationList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#list_widget_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update View
    # Update View
    # @param view_id 
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [View]
    def update_view(view_id, view, opts = {})
      data, _status_code, _headers = update_view_with_http_info(view_id, view, opts)
      data
    end

    # Update View
    # Update View
    # @param view_id 
    # @param view 
    # @param [Hash] opts the optional parameters
    # @return [Array<(View, Fixnum, Hash)>] View data, response status code and response headers
    def update_view_with_http_info(view_id, view, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.update_view ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.update_view"
      end
      # verify the required parameter 'view' is set
      if @api_client.config.client_side_validation && view.nil?
        fail ArgumentError, "Missing the required parameter 'view' when calling ManagementPlaneApiDashboardApi.update_view"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}'.sub('{' + 'view-id' + '}', view_id.to_s)

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
      post_body = @api_client.object_to_http_body(view)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'View')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#update_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Widget Configuration
    # Updates the widget at the given view. If the widget is referenced by other views, then the widget will be updated in all the views that it is part of. 
    # @param view_id 
    # @param widgetconfiguration_id 
    # @param widget_configuration 
    # @param [Hash] opts the optional parameters
    # @return [WidgetConfiguration]
    def update_widget_configuration(view_id, widgetconfiguration_id, widget_configuration, opts = {})
      data, _status_code, _headers = update_widget_configuration_with_http_info(view_id, widgetconfiguration_id, widget_configuration, opts)
      data
    end

    # Update Widget Configuration
    # Updates the widget at the given view. If the widget is referenced by other views, then the widget will be updated in all the views that it is part of. 
    # @param view_id 
    # @param widgetconfiguration_id 
    # @param widget_configuration 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WidgetConfiguration, Fixnum, Hash)>] WidgetConfiguration data, response status code and response headers
    def update_widget_configuration_with_http_info(view_id, widgetconfiguration_id, widget_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiDashboardApi.update_widget_configuration ...'
      end
      # verify the required parameter 'view_id' is set
      if @api_client.config.client_side_validation && view_id.nil?
        fail ArgumentError, "Missing the required parameter 'view_id' when calling ManagementPlaneApiDashboardApi.update_widget_configuration"
      end
      # verify the required parameter 'widgetconfiguration_id' is set
      if @api_client.config.client_side_validation && widgetconfiguration_id.nil?
        fail ArgumentError, "Missing the required parameter 'widgetconfiguration_id' when calling ManagementPlaneApiDashboardApi.update_widget_configuration"
      end
      # verify the required parameter 'widget_configuration' is set
      if @api_client.config.client_side_validation && widget_configuration.nil?
        fail ArgumentError, "Missing the required parameter 'widget_configuration' when calling ManagementPlaneApiDashboardApi.update_widget_configuration"
      end
      # resource path
      local_var_path = '/ui-views/{view-id}/widgetconfigurations/{widgetconfiguration-id}'.sub('{' + 'view-id' + '}', view_id.to_s).sub('{' + 'widgetconfiguration-id' + '}', widgetconfiguration_id.to_s)

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
      post_body = @api_client.object_to_http_body(widget_configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WidgetConfiguration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiDashboardApi#update_widget_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
