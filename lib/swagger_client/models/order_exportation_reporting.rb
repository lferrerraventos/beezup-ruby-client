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
  # Represent the reporting of the Order report exportations
  class OrderExportationReporting
    attr_accessor :abortion_utc_date

    attr_accessor :begin_utc_date

    attr_accessor :blob_name_uri

    attr_accessor :end_utc_date

    attr_accessor :enqueued_utc_date

    attr_accessor :error_message

    attr_accessor :execution_uuid

    attr_accessor :expiration_utc_date

    attr_accessor :failure_utc_date

    attr_accessor :ip_address

    # Raw representation of the JSON
    attr_accessor :json_criteria

    attr_accessor :last_update_utc_date

    attr_accessor :order_count

    attr_accessor :processing_status

    attr_accessor :remaining_order_count

    attr_accessor :resumed_utc_date

    attr_accessor :source_type

    attr_accessor :source_user_id

    attr_accessor :source_user_name

    attr_accessor :suspended_utc_date

    attr_accessor :timeout_duration

    attr_accessor :warning_message


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'abortion_utc_date' => :'abortionUtcDate',
        :'begin_utc_date' => :'beginUtcDate',
        :'blob_name_uri' => :'blobNameUri',
        :'end_utc_date' => :'endUtcDate',
        :'enqueued_utc_date' => :'enqueuedUtcDate',
        :'error_message' => :'errorMessage',
        :'execution_uuid' => :'executionUUID',
        :'expiration_utc_date' => :'expirationUtcDate',
        :'failure_utc_date' => :'failureUtcDate',
        :'ip_address' => :'ipAddress',
        :'json_criteria' => :'jsonCriteria',
        :'last_update_utc_date' => :'lastUpdateUtcDate',
        :'order_count' => :'orderCount',
        :'processing_status' => :'processingStatus',
        :'remaining_order_count' => :'remainingOrderCount',
        :'resumed_utc_date' => :'resumedUtcDate',
        :'source_type' => :'sourceType',
        :'source_user_id' => :'sourceUserId',
        :'source_user_name' => :'sourceUserName',
        :'suspended_utc_date' => :'suspendedUtcDate',
        :'timeout_duration' => :'timeoutDuration',
        :'warning_message' => :'warningMessage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'abortion_utc_date' => :'DateTime',
        :'begin_utc_date' => :'DateTime',
        :'blob_name_uri' => :'String',
        :'end_utc_date' => :'DateTime',
        :'enqueued_utc_date' => :'DateTime',
        :'error_message' => :'String',
        :'execution_uuid' => :'String',
        :'expiration_utc_date' => :'DateTime',
        :'failure_utc_date' => :'DateTime',
        :'ip_address' => :'String',
        :'json_criteria' => :'String',
        :'last_update_utc_date' => :'DateTime',
        :'order_count' => :'Integer',
        :'processing_status' => :'OrderExportationReportingProcessingStatus',
        :'remaining_order_count' => :'Integer',
        :'resumed_utc_date' => :'DateTime',
        :'source_type' => :'SourceType',
        :'source_user_id' => :'BeezUPCommonUserId',
        :'source_user_name' => :'String',
        :'suspended_utc_date' => :'DateTime',
        :'timeout_duration' => :'String',
        :'warning_message' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'abortionUtcDate')
        self.abortion_utc_date = attributes[:'abortionUtcDate']
      end

      if attributes.has_key?(:'beginUtcDate')
        self.begin_utc_date = attributes[:'beginUtcDate']
      end

      if attributes.has_key?(:'blobNameUri')
        self.blob_name_uri = attributes[:'blobNameUri']
      end

      if attributes.has_key?(:'endUtcDate')
        self.end_utc_date = attributes[:'endUtcDate']
      end

      if attributes.has_key?(:'enqueuedUtcDate')
        self.enqueued_utc_date = attributes[:'enqueuedUtcDate']
      end

      if attributes.has_key?(:'errorMessage')
        self.error_message = attributes[:'errorMessage']
      end

      if attributes.has_key?(:'executionUUID')
        self.execution_uuid = attributes[:'executionUUID']
      end

      if attributes.has_key?(:'expirationUtcDate')
        self.expiration_utc_date = attributes[:'expirationUtcDate']
      end

      if attributes.has_key?(:'failureUtcDate')
        self.failure_utc_date = attributes[:'failureUtcDate']
      end

      if attributes.has_key?(:'ipAddress')
        self.ip_address = attributes[:'ipAddress']
      end

      if attributes.has_key?(:'jsonCriteria')
        self.json_criteria = attributes[:'jsonCriteria']
      end

      if attributes.has_key?(:'lastUpdateUtcDate')
        self.last_update_utc_date = attributes[:'lastUpdateUtcDate']
      end

      if attributes.has_key?(:'orderCount')
        self.order_count = attributes[:'orderCount']
      end

      if attributes.has_key?(:'processingStatus')
        self.processing_status = attributes[:'processingStatus']
      end

      if attributes.has_key?(:'remainingOrderCount')
        self.remaining_order_count = attributes[:'remainingOrderCount']
      end

      if attributes.has_key?(:'resumedUtcDate')
        self.resumed_utc_date = attributes[:'resumedUtcDate']
      end

      if attributes.has_key?(:'sourceType')
        self.source_type = attributes[:'sourceType']
      end

      if attributes.has_key?(:'sourceUserId')
        self.source_user_id = attributes[:'sourceUserId']
      end

      if attributes.has_key?(:'sourceUserName')
        self.source_user_name = attributes[:'sourceUserName']
      end

      if attributes.has_key?(:'suspendedUtcDate')
        self.suspended_utc_date = attributes[:'suspendedUtcDate']
      end

      if attributes.has_key?(:'timeoutDuration')
        self.timeout_duration = attributes[:'timeoutDuration']
      end

      if attributes.has_key?(:'warningMessage')
        self.warning_message = attributes[:'warningMessage']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @enqueued_utc_date.nil?
        invalid_properties.push("invalid value for 'enqueued_utc_date', enqueued_utc_date cannot be nil.")
      end

      if @execution_uuid.nil?
        invalid_properties.push("invalid value for 'execution_uuid', execution_uuid cannot be nil.")
      end

      if @ip_address.nil?
        invalid_properties.push("invalid value for 'ip_address', ip_address cannot be nil.")
      end

      if @processing_status.nil?
        invalid_properties.push("invalid value for 'processing_status', processing_status cannot be nil.")
      end

      if @source_type.nil?
        invalid_properties.push("invalid value for 'source_type', source_type cannot be nil.")
      end

      if @source_user_name.nil?
        invalid_properties.push("invalid value for 'source_user_name', source_user_name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @enqueued_utc_date.nil?
      return false if @execution_uuid.nil?
      return false if @ip_address.nil?
      return false if @processing_status.nil?
      return false if @source_type.nil?
      return false if @source_user_name.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          abortion_utc_date == o.abortion_utc_date &&
          begin_utc_date == o.begin_utc_date &&
          blob_name_uri == o.blob_name_uri &&
          end_utc_date == o.end_utc_date &&
          enqueued_utc_date == o.enqueued_utc_date &&
          error_message == o.error_message &&
          execution_uuid == o.execution_uuid &&
          expiration_utc_date == o.expiration_utc_date &&
          failure_utc_date == o.failure_utc_date &&
          ip_address == o.ip_address &&
          json_criteria == o.json_criteria &&
          last_update_utc_date == o.last_update_utc_date &&
          order_count == o.order_count &&
          processing_status == o.processing_status &&
          remaining_order_count == o.remaining_order_count &&
          resumed_utc_date == o.resumed_utc_date &&
          source_type == o.source_type &&
          source_user_id == o.source_user_id &&
          source_user_name == o.source_user_name &&
          suspended_utc_date == o.suspended_utc_date &&
          timeout_duration == o.timeout_duration &&
          warning_message == o.warning_message
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [abortion_utc_date, begin_utc_date, blob_name_uri, end_utc_date, enqueued_utc_date, error_message, execution_uuid, expiration_utc_date, failure_utc_date, ip_address, json_criteria, last_update_utc_date, order_count, processing_status, remaining_order_count, resumed_utc_date, source_type, source_user_id, source_user_name, suspended_utc_date, timeout_duration, warning_message].hash
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
