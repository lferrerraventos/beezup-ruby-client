=begin
#BeezUP API

## The REST API of BeezUP system ## Overview The REST APIs provide programmatic access to read and write BeezUP data.  Basically, with this API you will be able to do everything like you were with your browser on https://go.beezup.com !  The main features are: - Register and manage your account - Create and manage and share your stores with your friends/co-workers. - Import your product catalog and schedule the auto importation - Search the channels your want to use - Configure your channels for your catalogs to export your product information:     - cost and general settings     - category and columns mappings     - your will be able to create and manage your custom column     - put in place exlusion filters based on simple conditions on your product data     - override product values     - get product vision for a channel catalog scope - Analyze and optimize your performance of your catalogs on all yours channels with different type of reportings by day, channel, category and by product. - Automatize your optimisation by using rules! - And of course... Manage your orders harvested from all your marketplaces:     - Synchronize your orders in an uniformized way     - Get the available actions and update the order status - ...and more!  ## Authentication credentials The public API with the base path **/v2/public** have been put in place to give you an entry point to our system for the user registration, login and lost password. The public API does not require any credentials. We give you the some public list of values and public channels for our public commercial web site [www.beezup.com](http://www.beezup.com).  The user API with the base path **/v2/user** requires a token which is available on this page: https://go.beezup.com/Account/MyAccount  ## Things to keep in mind ### API Rate Limits - The BeezUP REST API is limited to 100 calls/minute.  ### Media type The default media type for requests and responses is application/json. Where noted, some operations support other content types. If no additional content type is mentioned for a specific operation, then the media type is application/json.  ### Required content type The required and default encoding for the request and responses is UTF8.  ### Required date time format All our date time are formatted in ISO 8601 format: 2014-06-24T16:25:00Z.  ### Base URL The Base URL of the BeezUP API Order Management REST API conforms to the following template.  https://api.beezup.com  All URLs returned by the BeezUP API are relative to this base URL, and all requests to the REST API must use this base URL template.  You can test our API on https://api-docs.beezup.com/swagger-ui\\ You can contact us on [gitter, #BeezUP/API](https://gitter.im/BeezUP/API) 

OpenAPI spec version: 2.0
Contact: help@beezup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class ChannelCatalog
    attr_accessor :channel_id

    attr_accessor :channel_name

    attr_accessor :channel_image_url

    # The product count exported considering category mapping. Not all filters have been applied.
    attr_accessor :product_count

    # Indicates if the channel catalog is enable
    attr_accessor :enabled

    # Indicates if this channel catalog is related to a marketplace
    attr_accessor :is_marketplace

    attr_accessor :channel_catalog_id

    attr_accessor :store_id

    attr_accessor :general_settings

    attr_accessor :channel_cost_settings

    attr_accessor :channel_category_settings

    attr_accessor :cost_settings

    attr_accessor :category_mapping_settings

    attr_accessor :column_mappings

    attr_accessor :exclusion_filters

    attr_accessor :export_url

    attr_accessor :state

    # The channel type list related to the channel
    attr_accessor :types

    attr_accessor :links


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channel_id' => :'channelId',
        :'channel_name' => :'channelName',
        :'channel_image_url' => :'channelImageUrl',
        :'product_count' => :'productCount',
        :'enabled' => :'enabled',
        :'is_marketplace' => :'isMarketplace',
        :'channel_catalog_id' => :'channelCatalogId',
        :'store_id' => :'storeId',
        :'general_settings' => :'generalSettings',
        :'channel_cost_settings' => :'channelCostSettings',
        :'channel_category_settings' => :'channelCategorySettings',
        :'cost_settings' => :'costSettings',
        :'category_mapping_settings' => :'categoryMappingSettings',
        :'column_mappings' => :'columnMappings',
        :'exclusion_filters' => :'exclusionFilters',
        :'export_url' => :'exportUrl',
        :'state' => :'state',
        :'types' => :'types',
        :'links' => :'links'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'channel_id' => :'BeezUPCommonChannelId',
        :'channel_name' => :'BeezUPCommonChannelName',
        :'channel_image_url' => :'BeezUPCommonHttpUrl',
        :'product_count' => :'Integer',
        :'enabled' => :'BOOLEAN',
        :'is_marketplace' => :'BOOLEAN',
        :'channel_catalog_id' => :'BeezUPCommonChannelCatalogId',
        :'store_id' => :'BeezUPCommonStoreId',
        :'general_settings' => :'GeneralSettings',
        :'channel_cost_settings' => :'ChannelCostSettings',
        :'channel_category_settings' => :'ChannelCategorySettings',
        :'cost_settings' => :'CostSettings',
        :'category_mapping_settings' => :'ChannelCatalogCategoryMappingSettings',
        :'column_mappings' => :'ChannelCatalogColumnMappingListWithName',
        :'exclusion_filters' => :'ExclusionFilters',
        :'export_url' => :'BeezUPCommonHttpUrl',
        :'state' => :'ChannelCatalogState',
        :'types' => :'Array<String>',
        :'links' => :'ChannelCatalogLinks'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'channelId')
        self.channel_id = attributes[:'channelId']
      end

      if attributes.has_key?(:'channelName')
        self.channel_name = attributes[:'channelName']
      end

      if attributes.has_key?(:'channelImageUrl')
        self.channel_image_url = attributes[:'channelImageUrl']
      end

      if attributes.has_key?(:'productCount')
        self.product_count = attributes[:'productCount']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'isMarketplace')
        self.is_marketplace = attributes[:'isMarketplace']
      end

      if attributes.has_key?(:'channelCatalogId')
        self.channel_catalog_id = attributes[:'channelCatalogId']
      end

      if attributes.has_key?(:'storeId')
        self.store_id = attributes[:'storeId']
      end

      if attributes.has_key?(:'generalSettings')
        self.general_settings = attributes[:'generalSettings']
      end

      if attributes.has_key?(:'channelCostSettings')
        self.channel_cost_settings = attributes[:'channelCostSettings']
      end

      if attributes.has_key?(:'channelCategorySettings')
        self.channel_category_settings = attributes[:'channelCategorySettings']
      end

      if attributes.has_key?(:'costSettings')
        self.cost_settings = attributes[:'costSettings']
      end

      if attributes.has_key?(:'categoryMappingSettings')
        self.category_mapping_settings = attributes[:'categoryMappingSettings']
      end

      if attributes.has_key?(:'columnMappings')
        self.column_mappings = attributes[:'columnMappings']
      end

      if attributes.has_key?(:'exclusionFilters')
        self.exclusion_filters = attributes[:'exclusionFilters']
      end

      if attributes.has_key?(:'exportUrl')
        self.export_url = attributes[:'exportUrl']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'types')
        if (value = attributes[:'types']).is_a?(Array)
          self.types = value
        end
      end

      if attributes.has_key?(:'links')
        self.links = attributes[:'links']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel_id.nil?
        invalid_properties.push("invalid value for 'channel_id', channel_id cannot be nil.")
      end

      if @channel_name.nil?
        invalid_properties.push("invalid value for 'channel_name', channel_name cannot be nil.")
      end

      if @channel_image_url.nil?
        invalid_properties.push("invalid value for 'channel_image_url', channel_image_url cannot be nil.")
      end

      if @product_count.nil?
        invalid_properties.push("invalid value for 'product_count', product_count cannot be nil.")
      end

      if @enabled.nil?
        invalid_properties.push("invalid value for 'enabled', enabled cannot be nil.")
      end

      if @is_marketplace.nil?
        invalid_properties.push("invalid value for 'is_marketplace', is_marketplace cannot be nil.")
      end

      if @channel_catalog_id.nil?
        invalid_properties.push("invalid value for 'channel_catalog_id', channel_catalog_id cannot be nil.")
      end

      if @store_id.nil?
        invalid_properties.push("invalid value for 'store_id', store_id cannot be nil.")
      end

      if @general_settings.nil?
        invalid_properties.push("invalid value for 'general_settings', general_settings cannot be nil.")
      end

      if @channel_cost_settings.nil?
        invalid_properties.push("invalid value for 'channel_cost_settings', channel_cost_settings cannot be nil.")
      end

      if @channel_category_settings.nil?
        invalid_properties.push("invalid value for 'channel_category_settings', channel_category_settings cannot be nil.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      if @types.nil?
        invalid_properties.push("invalid value for 'types', types cannot be nil.")
      end

      if @links.nil?
        invalid_properties.push("invalid value for 'links', links cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel_id.nil?
      return false if @channel_name.nil?
      return false if @channel_image_url.nil?
      return false if @product_count.nil?
      return false if @enabled.nil?
      return false if @is_marketplace.nil?
      return false if @channel_catalog_id.nil?
      return false if @store_id.nil?
      return false if @general_settings.nil?
      return false if @channel_cost_settings.nil?
      return false if @channel_category_settings.nil?
      return false if @state.nil?
      return false if @types.nil?
      return false if @links.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channel_id == o.channel_id &&
          channel_name == o.channel_name &&
          channel_image_url == o.channel_image_url &&
          product_count == o.product_count &&
          enabled == o.enabled &&
          is_marketplace == o.is_marketplace &&
          channel_catalog_id == o.channel_catalog_id &&
          store_id == o.store_id &&
          general_settings == o.general_settings &&
          channel_cost_settings == o.channel_cost_settings &&
          channel_category_settings == o.channel_category_settings &&
          cost_settings == o.cost_settings &&
          category_mapping_settings == o.category_mapping_settings &&
          column_mappings == o.column_mappings &&
          exclusion_filters == o.exclusion_filters &&
          export_url == o.export_url &&
          state == o.state &&
          types == o.types &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [channel_id, channel_name, channel_image_url, product_count, enabled, is_marketplace, channel_catalog_id, store_id, general_settings, channel_cost_settings, channel_category_settings, cost_settings, category_mapping_settings, column_mappings, exclusion_filters, export_url, state, types, links].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = SwaggerClient.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
