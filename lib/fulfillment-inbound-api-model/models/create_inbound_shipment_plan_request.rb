=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'date'

module AmzSpApi::FulfillmentInboundApiModel
  # The request schema for the createInboundShipmentPlan operation.
  class CreateInboundShipmentPlanRequest
    attr_accessor :ship_from_address

    attr_accessor :label_prep_preference

    # The two-character country code for the country where the inbound shipment is to be sent.  Note: Not required. Specifying both ShipToCountryCode and ShipToCountrySubdivisionCode returns an error.   Values:   ShipToCountryCode values for North America:  * CA – Canada  * MX - Mexico  * US - United States  ShipToCountryCode values for MCI sellers in Europe:  * DE – Germany  * ES – Spain  * FR – France  * GB – United Kingdom  * IT – Italy  Default: The country code for the seller's home marketplace.
    attr_accessor :ship_to_country_code

    # The two-character country code, followed by a dash and then up to three characters that represent the subdivision of the country where the inbound shipment is to be sent. For example, \"IN-MH\". In full ISO 3166-2 format.  Note: Not required. Specifying both ShipToCountryCode and ShipToCountrySubdivisionCode returns an error.
    attr_accessor :ship_to_country_subdivision_code

    attr_accessor :inbound_shipment_plan_request_items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ship_from_address' => :'ShipFromAddress',
        :'label_prep_preference' => :'LabelPrepPreference',
        :'ship_to_country_code' => :'ShipToCountryCode',
        :'ship_to_country_subdivision_code' => :'ShipToCountrySubdivisionCode',
        :'inbound_shipment_plan_request_items' => :'InboundShipmentPlanRequestItems'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ship_from_address' => :'Object',
        :'label_prep_preference' => :'Object',
        :'ship_to_country_code' => :'Object',
        :'ship_to_country_subdivision_code' => :'Object',
        :'inbound_shipment_plan_request_items' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ship_from_address')
        self.ship_from_address = attributes[:'ship_from_address']
      end

      if attributes.key?(:'label_prep_preference')
        self.label_prep_preference = attributes[:'label_prep_preference']
      end

      if attributes.key?(:'ship_to_country_code')
        self.ship_to_country_code = attributes[:'ship_to_country_code']
      end

      if attributes.key?(:'ship_to_country_subdivision_code')
        self.ship_to_country_subdivision_code = attributes[:'ship_to_country_subdivision_code']
      end

      if attributes.key?(:'inbound_shipment_plan_request_items')
        self.inbound_shipment_plan_request_items = attributes[:'inbound_shipment_plan_request_items']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ship_from_address.nil?
        invalid_properties.push('invalid value for "ship_from_address", ship_from_address cannot be nil.')
      end

      if @label_prep_preference.nil?
        invalid_properties.push('invalid value for "label_prep_preference", label_prep_preference cannot be nil.')
      end

      if @inbound_shipment_plan_request_items.nil?
        invalid_properties.push('invalid value for "inbound_shipment_plan_request_items", inbound_shipment_plan_request_items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ship_from_address.nil?
      return false if @label_prep_preference.nil?
      return false if @inbound_shipment_plan_request_items.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ship_from_address == o.ship_from_address &&
          label_prep_preference == o.label_prep_preference &&
          ship_to_country_code == o.ship_to_country_code &&
          ship_to_country_subdivision_code == o.ship_to_country_subdivision_code &&
          inbound_shipment_plan_request_items == o.inbound_shipment_plan_request_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ship_from_address, label_prep_preference, ship_to_country_code, ship_to_country_subdivision_code, inbound_shipment_plan_request_items].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
      when :Boolean
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
        AmzSpApi::FulfillmentInboundApiModel.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
    end  end
end
