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

  class ChannelCatalogMarketplaceNumberProperty
    attr_accessor :name

    attr_accessor :info

    # Indicate the description of the property
    attr_accessor :description

    # Indicate the position of the property in the display group
    attr_accessor :position

    # Indicate if the value cannot be changed. This is used for example for ebay token that should not be changed.
    attr_accessor :read_only

    # Indicates the minimum size of the property value
    attr_accessor :min_length

    # Indicates the maximum size of the property value
    attr_accessor :max_length

    # Indicates the minimum item count of the property value.
    attr_accessor :min_items

    # Indicates the maximum item count of the property value
    attr_accessor :max_items

    attr_accessor :lov_link

    # Indicates if the property value must be in the list of value.
    attr_accessor :lov_required

    # Indicate if the property is required or not
    attr_accessor :required

    # Indicates the offer identifier required to configure this property.
    attr_accessor :offer_id_required

    # Indicates if this property should be displayed in the configuration page.
    attr_accessor :visible

    attr_accessor :type

    attr_accessor :discriminator_type

    # Channel catalog marketplace setting value format validation regular expression
    attr_accessor :pattern

    # Indicate the default values of the property
    attr_accessor :default


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'info' => :'info',
        :'description' => :'description',
        :'position' => :'position',
        :'read_only' => :'readOnly',
        :'min_length' => :'minLength',
        :'max_length' => :'maxLength',
        :'min_items' => :'minItems',
        :'max_items' => :'maxItems',
        :'lov_link' => :'lovLink',
        :'lov_required' => :'lovRequired',
        :'required' => :'required',
        :'offer_id_required' => :'offerIdRequired',
        :'visible' => :'visible',
        :'type' => :'type',
        :'discriminator_type' => :'discriminatorType',
        :'pattern' => :'pattern',
        :'default' => :'default'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'ChannelCatalogMarketplacePropertyName',
        :'info' => :'BeezUPCommonInfoSummaries',
        :'description' => :'String',
        :'position' => :'Integer',
        :'read_only' => :'BOOLEAN',
        :'min_length' => :'Integer',
        :'max_length' => :'Integer',
        :'min_items' => :'Integer',
        :'max_items' => :'Integer',
        :'lov_link' => :'BeezUPCommonLOVLink3',
        :'lov_required' => :'BOOLEAN',
        :'required' => :'BOOLEAN',
        :'offer_id_required' => :'Integer',
        :'visible' => :'BOOLEAN',
        :'type' => :'Type',
        :'discriminator_type' => :'ChannelCatalogMarketplacePropertyDiscriminatorType',
        :'pattern' => :'String',
        :'default' => :'Array<Float>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'info')
        self.info = attributes[:'info']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'readOnly')
        self.read_only = attributes[:'readOnly']
      else
        self.read_only = false
      end

      if attributes.has_key?(:'minLength')
        self.min_length = attributes[:'minLength']
      else
        self.min_length = 0
      end

      if attributes.has_key?(:'maxLength')
        self.max_length = attributes[:'maxLength']
      end

      if attributes.has_key?(:'minItems')
        self.min_items = attributes[:'minItems']
      else
        self.min_items = 1
      end

      if attributes.has_key?(:'maxItems')
        self.max_items = attributes[:'maxItems']
      else
        self.max_items = 1
      end

      if attributes.has_key?(:'lovLink')
        self.lov_link = attributes[:'lovLink']
      end

      if attributes.has_key?(:'lovRequired')
        self.lov_required = attributes[:'lovRequired']
      else
        self.lov_required = false
      end

      if attributes.has_key?(:'required')
        self.required = attributes[:'required']
      else
        self.required = false
      end

      if attributes.has_key?(:'offerIdRequired')
        self.offer_id_required = attributes[:'offerIdRequired']
      end

      if attributes.has_key?(:'visible')
        self.visible = attributes[:'visible']
      else
        self.visible = true
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'discriminatorType')
        self.discriminator_type = attributes[:'discriminatorType']
      end

      if attributes.has_key?(:'pattern')
        self.pattern = attributes[:'pattern']
      end

      if attributes.has_key?(:'default')
        if (value = attributes[:'default']).is_a?(Array)
          self.default = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @position.nil?
        invalid_properties.push("invalid value for 'position', position cannot be nil.")
      end

      if @position < 1
        invalid_properties.push("invalid value for 'position', must be greater than or equal to 1.")
      end

      if @read_only.nil?
        invalid_properties.push("invalid value for 'read_only', read_only cannot be nil.")
      end

      if !@min_length.nil? && @min_length < 0
        invalid_properties.push("invalid value for 'min_length', must be greater than or equal to 0.")
      end

      if !@max_length.nil? && @max_length < 1
        invalid_properties.push("invalid value for 'max_length', must be greater than or equal to 1.")
      end

      if !@min_items.nil? && @min_items < 0
        invalid_properties.push("invalid value for 'min_items', must be greater than or equal to 0.")
      end

      if !@max_items.nil? && @max_items < 1
        invalid_properties.push("invalid value for 'max_items', must be greater than or equal to 1.")
      end

      if @required.nil?
        invalid_properties.push("invalid value for 'required', required cannot be nil.")
      end

      if @visible.nil?
        invalid_properties.push("invalid value for 'visible', visible cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @discriminator_type.nil?
        invalid_properties.push("invalid value for 'discriminator_type', discriminator_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @position.nil?
      return false if @position < 1
      return false if @read_only.nil?
      return false if !@min_length.nil? && @min_length < 0
      return false if !@max_length.nil? && @max_length < 1
      return false if !@min_items.nil? && @min_items < 0
      return false if !@max_items.nil? && @max_items < 1
      return false if @required.nil?
      return false if @visible.nil?
      return false if @type.nil?
      return false if @discriminator_type.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] position Value to be assigned
    def position=(position)
      if position.nil?
        fail ArgumentError, "position cannot be nil"
      end

      if position < 1
        fail ArgumentError, "invalid value for 'position', must be greater than or equal to 1."
      end

      @position = position
    end

    # Custom attribute writer method with validation
    # @param [Object] min_length Value to be assigned
    def min_length=(min_length)

      if !min_length.nil? && min_length < 0
        fail ArgumentError, "invalid value for 'min_length', must be greater than or equal to 0."
      end

      @min_length = min_length
    end

    # Custom attribute writer method with validation
    # @param [Object] max_length Value to be assigned
    def max_length=(max_length)

      if !max_length.nil? && max_length < 1
        fail ArgumentError, "invalid value for 'max_length', must be greater than or equal to 1."
      end

      @max_length = max_length
    end

    # Custom attribute writer method with validation
    # @param [Object] min_items Value to be assigned
    def min_items=(min_items)

      if !min_items.nil? && min_items < 0
        fail ArgumentError, "invalid value for 'min_items', must be greater than or equal to 0."
      end

      @min_items = min_items
    end

    # Custom attribute writer method with validation
    # @param [Object] max_items Value to be assigned
    def max_items=(max_items)

      if !max_items.nil? && max_items < 1
        fail ArgumentError, "invalid value for 'max_items', must be greater than or equal to 1."
      end

      @max_items = max_items
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          info == o.info &&
          description == o.description &&
          position == o.position &&
          read_only == o.read_only &&
          min_length == o.min_length &&
          max_length == o.max_length &&
          min_items == o.min_items &&
          max_items == o.max_items &&
          lov_link == o.lov_link &&
          lov_required == o.lov_required &&
          required == o.required &&
          offer_id_required == o.offer_id_required &&
          visible == o.visible &&
          type == o.type &&
          discriminator_type == o.discriminator_type &&
          pattern == o.pattern &&
          default == o.default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, info, description, position, read_only, min_length, max_length, min_items, max_items, lov_link, lov_required, required, offer_id_required, visible, type, discriminator_type, pattern, default].hash
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