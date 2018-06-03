=begin
#BeezUP API

## The REST API of BeezUP system ## Overview The REST APIs provide programmatic access to read and write BeezUP data.  Basically, with this API you will be able to do everything like you were with your browser on https://go.beezup.com !  The main features are: - Register and manage your account - Create and manage and share your stores with your friends/co-workers. - Import your product catalog and schedule the auto importation - Search the channels your want to use - Configure your channels for your catalogs to export your product information:     - cost and general settings     - category and columns mappings     - your will be able to create and manage your custom column     - put in place exlusion filters based on simple conditions on your product data     - override product values     - get product vision for a channel catalog scope - Analyze and optimize your performance of your catalogs on all yours channels with different type of reportings by day, channel, category and by product. - Automatize your optimisation by using rules! - And of course... Manage your orders harvested from all your marketplaces:     - Synchronize your orders in an uniformized way     - Get the available actions and update the order status - ...and more!  ## Authentication credentials The public API with the base path **/v2/public** have been put in place to give you an entry point to our system for the user registration, login and lost password. The public API does not require any credentials. We give you the some public list of values and public channels for our public commercial web site [www.beezup.com](http://www.beezup.com).  The user API with the base path **/v2/user** requires a token which is available on this page: https://go.beezup.com/Account/MyAccount  ## Things to keep in mind ### API Rate Limits - The BeezUP REST API is limited to 100 calls/minute.  ### Media type The default media type for requests and responses is application/json. Where noted, some operations support other content types. If no additional content type is mentioned for a specific operation, then the media type is application/json.  ### Required content type The required and default encoding for the request and responses is UTF8.  ### Required date time format All our date time are formatted in ISO 8601 format: 2014-06-24T16:25:00Z.  ### Base URL The Base URL of the BeezUP API Order Management REST API conforms to the following template.  https://api.beezup.com  All URLs returned by the BeezUP API are relative to this base URL, and all requests to the REST API must use this base URL template.  You can test our API on https://api-docs.beezup.com/swagger-ui\\ You can contact us on [gitter, #BeezUP/API](https://gitter.im/BeezUP/API) 

OpenAPI spec version: 2.0
Contact: help@beezup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class MarketplacesChannelCatalogsSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get the marketplace properties for a channel catalog
    # 
    # @param channel_catalog_id 
    # @param redirection_page_url 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :accept_language Indicates that the client accepts the following languages.
    # @return [ChannelCatalogMarketplaceProperties]
    def get_channel_catalog_marketplace_properties(channel_catalog_id, redirection_page_url, opts = {})
      data, _status_code, _headers = get_channel_catalog_marketplace_properties_with_http_info(channel_catalog_id, redirection_page_url, opts)
      return data
    end

    # Get the marketplace properties for a channel catalog
    # 
    # @param channel_catalog_id 
    # @param redirection_page_url 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :accept_language Indicates that the client accepts the following languages.
    # @return [Array<(ChannelCatalogMarketplaceProperties, Fixnum, Hash)>] ChannelCatalogMarketplaceProperties data, response status code and response headers
    def get_channel_catalog_marketplace_properties_with_http_info(channel_catalog_id, redirection_page_url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketplacesChannelCatalogsSettingsApi.get_channel_catalog_marketplace_properties ..."
      end
      # verify the required parameter 'channel_catalog_id' is set
      if @api_client.config.client_side_validation && channel_catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'channel_catalog_id' when calling MarketplacesChannelCatalogsSettingsApi.get_channel_catalog_marketplace_properties"
      end
      # verify the required parameter 'redirection_page_url' is set
      if @api_client.config.client_side_validation && redirection_page_url.nil?
        fail ArgumentError, "Missing the required parameter 'redirection_page_url' when calling MarketplacesChannelCatalogsSettingsApi.get_channel_catalog_marketplace_properties"
      end
      # resource path
      local_var_path = "/user/marketplaces/channelcatalogs/{channelCatalogId}/properties".sub('{' + 'channelCatalogId' + '}', channel_catalog_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'redirectionPageUrl'] = redirection_page_url

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept-Language'] = @api_client.build_collection_param(opts[:'accept_language'], :csv) if !opts[:'accept_language'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChannelCatalogMarketplaceProperties')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketplacesChannelCatalogsSettingsApi#get_channel_catalog_marketplace_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the marketplace settings for a channel catalog
    # 
    # @param channel_catalog_id Channel Catalog Id to query (required)
    # @param [Hash] opts the optional parameters
    # @return [ChannelCatalogMarketplaceSettings]
    def get_channel_catalog_marketplace_settings(channel_catalog_id, opts = {})
      data, _status_code, _headers = get_channel_catalog_marketplace_settings_with_http_info(channel_catalog_id, opts)
      return data
    end

    # Get the marketplace settings for a channel catalog
    # 
    # @param channel_catalog_id Channel Catalog Id to query (required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChannelCatalogMarketplaceSettings, Fixnum, Hash)>] ChannelCatalogMarketplaceSettings data, response status code and response headers
    def get_channel_catalog_marketplace_settings_with_http_info(channel_catalog_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketplacesChannelCatalogsSettingsApi.get_channel_catalog_marketplace_settings ..."
      end
      # verify the required parameter 'channel_catalog_id' is set
      if @api_client.config.client_side_validation && channel_catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'channel_catalog_id' when calling MarketplacesChannelCatalogsSettingsApi.get_channel_catalog_marketplace_settings"
      end
      # resource path
      local_var_path = "/user/marketplaces/channelcatalogs/{channelCatalogId}/settings".sub('{' + 'channelCatalogId' + '}', channel_catalog_id.to_s)

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChannelCatalogMarketplaceSettings')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketplacesChannelCatalogsSettingsApi#get_channel_catalog_marketplace_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save new marketplace settings for a channel catalog
    # Allow you to configure your marketplace settings. Partial update accepted. 
    # @param channel_catalog_id Channel Catalog Id to query
    # @param model Settings to save
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_channel_catalog_marketplace_settings(channel_catalog_id, model, opts = {})
      set_channel_catalog_marketplace_settings_with_http_info(channel_catalog_id, model, opts)
      return nil
    end

    # Save new marketplace settings for a channel catalog
    # Allow you to configure your marketplace settings. Partial update accepted. 
    # @param channel_catalog_id Channel Catalog Id to query
    # @param model Settings to save
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_channel_catalog_marketplace_settings_with_http_info(channel_catalog_id, model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketplacesChannelCatalogsSettingsApi.set_channel_catalog_marketplace_settings ..."
      end
      # verify the required parameter 'channel_catalog_id' is set
      if @api_client.config.client_side_validation && channel_catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'channel_catalog_id' when calling MarketplacesChannelCatalogsSettingsApi.set_channel_catalog_marketplace_settings"
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling MarketplacesChannelCatalogsSettingsApi.set_channel_catalog_marketplace_settings"
      end
      # resource path
      local_var_path = "/user/marketplaces/channelcatalogs/{channelCatalogId}/settings".sub('{' + 'channelCatalogId' + '}', channel_catalog_id.to_s)

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
      post_body = @api_client.object_to_http_body(model)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketplacesChannelCatalogsSettingsApi#set_channel_catalog_marketplace_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end