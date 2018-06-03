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

  class AnalyticsStoreIndexLinks
    attr_accessor :_self

    attr_accessor :tracking_status

    attr_accessor :tracked_clicks

    attr_accessor :tracked_orders

    attr_accessor :tracked_external_orders

    attr_accessor :report_by_day

    attr_accessor :report_by_channel

    attr_accessor :report_by_category

    attr_accessor :report_by_product

    attr_accessor :optimise_all

    attr_accessor :optimise

    attr_accessor :optimise_by_channel

    attr_accessor :optimise_by_category

    attr_accessor :optimise_by_product

    attr_accessor :report_filters

    attr_accessor :rules


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'self',
        :'tracking_status' => :'trackingStatus',
        :'tracked_clicks' => :'trackedClicks',
        :'tracked_orders' => :'trackedOrders',
        :'tracked_external_orders' => :'trackedExternalOrders',
        :'report_by_day' => :'reportByDay',
        :'report_by_channel' => :'reportByChannel',
        :'report_by_category' => :'reportByCategory',
        :'report_by_product' => :'reportByProduct',
        :'optimise_all' => :'optimiseAll',
        :'optimise' => :'optimise',
        :'optimise_by_channel' => :'optimiseByChannel',
        :'optimise_by_category' => :'optimiseByCategory',
        :'optimise_by_product' => :'optimiseByProduct',
        :'report_filters' => :'reportFilters',
        :'rules' => :'rules'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'LinksAnalyticsIndexLink',
        :'tracking_status' => :'LinksGetStoreTrackingStatusLink',
        :'tracked_clicks' => :'LinksGetStoreTrackedClicksLink',
        :'tracked_orders' => :'LinksGetStoreTrackedOrdersLink',
        :'tracked_external_orders' => :'LinksGetStoreTrackedExternalOrdersLink',
        :'report_by_day' => :'LinksGetStoreReportByDayLink',
        :'report_by_channel' => :'LinksGetStoreReportByChannelLink',
        :'report_by_category' => :'LinksGetStoreReportByCategoryLink',
        :'report_by_product' => :'LinksGetStoreReportByProductLink',
        :'optimise_all' => :'LinksOptimiseAllLink',
        :'optimise' => :'LinksOptimiseLink',
        :'optimise_by_channel' => :'LinksOptimiseByChannelLink',
        :'optimise_by_category' => :'LinksOptimiseByCategoryLink',
        :'optimise_by_product' => :'LinksOptimiseByProductLink',
        :'report_filters' => :'LinksGetReportFiltersLink',
        :'rules' => :'LinksGetRulesLink'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'self')
        self._self = attributes[:'self']
      end

      if attributes.has_key?(:'trackingStatus')
        self.tracking_status = attributes[:'trackingStatus']
      end

      if attributes.has_key?(:'trackedClicks')
        self.tracked_clicks = attributes[:'trackedClicks']
      end

      if attributes.has_key?(:'trackedOrders')
        self.tracked_orders = attributes[:'trackedOrders']
      end

      if attributes.has_key?(:'trackedExternalOrders')
        self.tracked_external_orders = attributes[:'trackedExternalOrders']
      end

      if attributes.has_key?(:'reportByDay')
        self.report_by_day = attributes[:'reportByDay']
      end

      if attributes.has_key?(:'reportByChannel')
        self.report_by_channel = attributes[:'reportByChannel']
      end

      if attributes.has_key?(:'reportByCategory')
        self.report_by_category = attributes[:'reportByCategory']
      end

      if attributes.has_key?(:'reportByProduct')
        self.report_by_product = attributes[:'reportByProduct']
      end

      if attributes.has_key?(:'optimiseAll')
        self.optimise_all = attributes[:'optimiseAll']
      end

      if attributes.has_key?(:'optimise')
        self.optimise = attributes[:'optimise']
      end

      if attributes.has_key?(:'optimiseByChannel')
        self.optimise_by_channel = attributes[:'optimiseByChannel']
      end

      if attributes.has_key?(:'optimiseByCategory')
        self.optimise_by_category = attributes[:'optimiseByCategory']
      end

      if attributes.has_key?(:'optimiseByProduct')
        self.optimise_by_product = attributes[:'optimiseByProduct']
      end

      if attributes.has_key?(:'reportFilters')
        self.report_filters = attributes[:'reportFilters']
      end

      if attributes.has_key?(:'rules')
        self.rules = attributes[:'rules']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @_self.nil?
        invalid_properties.push("invalid value for '_self', _self cannot be nil.")
      end

      if @tracking_status.nil?
        invalid_properties.push("invalid value for 'tracking_status', tracking_status cannot be nil.")
      end

      if @tracked_clicks.nil?
        invalid_properties.push("invalid value for 'tracked_clicks', tracked_clicks cannot be nil.")
      end

      if @tracked_orders.nil?
        invalid_properties.push("invalid value for 'tracked_orders', tracked_orders cannot be nil.")
      end

      if @report_filters.nil?
        invalid_properties.push("invalid value for 'report_filters', report_filters cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_self.nil?
      return false if @tracking_status.nil?
      return false if @tracked_clicks.nil?
      return false if @tracked_orders.nil?
      return false if @report_filters.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          tracking_status == o.tracking_status &&
          tracked_clicks == o.tracked_clicks &&
          tracked_orders == o.tracked_orders &&
          tracked_external_orders == o.tracked_external_orders &&
          report_by_day == o.report_by_day &&
          report_by_channel == o.report_by_channel &&
          report_by_category == o.report_by_category &&
          report_by_product == o.report_by_product &&
          optimise_all == o.optimise_all &&
          optimise == o.optimise &&
          optimise_by_channel == o.optimise_by_channel &&
          optimise_by_category == o.optimise_by_category &&
          optimise_by_product == o.optimise_by_product &&
          report_filters == o.report_filters &&
          rules == o.rules
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, tracking_status, tracked_clicks, tracked_orders, tracked_external_orders, report_by_day, report_by_channel, report_by_category, report_by_product, optimise_all, optimise, optimise_by_channel, optimise_by_category, optimise_by_product, report_filters, rules].hash
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
