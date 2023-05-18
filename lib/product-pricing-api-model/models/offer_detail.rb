=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer information for Amazon Marketplace products.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'date'

module AmzSpApi::ProductPricingApiModel
  class OfferDetail
    # When true, this is the seller's offer.
    attr_accessor :my_offer

    attr_accessor :offer_type

    # The subcondition of the item. Subcondition values: New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other.
    attr_accessor :sub_condition

    # The seller identifier for the offer.
    attr_accessor :seller_id

    # Information about the condition of the item.
    attr_accessor :condition_notes

    attr_accessor :seller_feedback_rating

    attr_accessor :shipping_time

    attr_accessor :listing_price

    attr_accessor :quantity_discount_prices

    attr_accessor :points

    attr_accessor :shipping

    attr_accessor :ships_from

    # When true, the offer is fulfilled by Amazon.
    attr_accessor :is_fulfilled_by_amazon

    attr_accessor :prime_information

    # When true, the offer is currently in the Buy Box. There can be up to two Buy Box winners at any time per ASIN, one that is eligible for Prime and one that is not eligible for Prime.
    attr_accessor :is_buy_box_winner

    # When true, the seller of the item is eligible to win the Buy Box.
    attr_accessor :is_featured_merchant

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'my_offer' => :'MyOffer',
        :'offer_type' => :'offerType',
        :'sub_condition' => :'SubCondition',
        :'seller_id' => :'SellerId',
        :'condition_notes' => :'ConditionNotes',
        :'seller_feedback_rating' => :'SellerFeedbackRating',
        :'shipping_time' => :'ShippingTime',
        :'listing_price' => :'ListingPrice',
        :'quantity_discount_prices' => :'quantityDiscountPrices',
        :'points' => :'Points',
        :'shipping' => :'Shipping',
        :'ships_from' => :'ShipsFrom',
        :'is_fulfilled_by_amazon' => :'IsFulfilledByAmazon',
        :'prime_information' => :'PrimeInformation',
        :'is_buy_box_winner' => :'IsBuyBoxWinner',
        :'is_featured_merchant' => :'IsFeaturedMerchant'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'my_offer' => :'Object',
        :'offer_type' => :'Object',
        :'sub_condition' => :'Object',
        :'seller_id' => :'Object',
        :'condition_notes' => :'Object',
        :'seller_feedback_rating' => :'Object',
        :'shipping_time' => :'Object',
        :'listing_price' => :'Object',
        :'quantity_discount_prices' => :'Object',
        :'points' => :'Object',
        :'shipping' => :'Object',
        :'ships_from' => :'Object',
        :'is_fulfilled_by_amazon' => :'Object',
        :'prime_information' => :'Object',
        :'is_buy_box_winner' => :'Object',
        :'is_featured_merchant' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::ProductPricingApiModel::OfferDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::ProductPricingApiModel::OfferDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'my_offer')
        self.my_offer = attributes[:'my_offer']
      end

      if attributes.key?(:'offer_type')
        self.offer_type = attributes[:'offer_type']
      end

      if attributes.key?(:'sub_condition')
        self.sub_condition = attributes[:'sub_condition']
      end

      if attributes.key?(:'seller_id')
        self.seller_id = attributes[:'seller_id']
      end

      if attributes.key?(:'condition_notes')
        self.condition_notes = attributes[:'condition_notes']
      end

      if attributes.key?(:'seller_feedback_rating')
        self.seller_feedback_rating = attributes[:'seller_feedback_rating']
      end

      if attributes.key?(:'shipping_time')
        self.shipping_time = attributes[:'shipping_time']
      end

      if attributes.key?(:'listing_price')
        self.listing_price = attributes[:'listing_price']
      end

      if attributes.key?(:'quantity_discount_prices')
        if (value = attributes[:'quantity_discount_prices']).is_a?(Array)
          self.quantity_discount_prices = value
        end
      end

      if attributes.key?(:'points')
        self.points = attributes[:'points']
      end

      if attributes.key?(:'shipping')
        self.shipping = attributes[:'shipping']
      end

      if attributes.key?(:'ships_from')
        self.ships_from = attributes[:'ships_from']
      end

      if attributes.key?(:'is_fulfilled_by_amazon')
        self.is_fulfilled_by_amazon = attributes[:'is_fulfilled_by_amazon']
      end

      if attributes.key?(:'prime_information')
        self.prime_information = attributes[:'prime_information']
      end

      if attributes.key?(:'is_buy_box_winner')
        self.is_buy_box_winner = attributes[:'is_buy_box_winner']
      end

      if attributes.key?(:'is_featured_merchant')
        self.is_featured_merchant = attributes[:'is_featured_merchant']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sub_condition.nil?
        invalid_properties.push('invalid value for "sub_condition", sub_condition cannot be nil.')
      end

      if @shipping_time.nil?
        invalid_properties.push('invalid value for "shipping_time", shipping_time cannot be nil.')
      end

      if @listing_price.nil?
        invalid_properties.push('invalid value for "listing_price", listing_price cannot be nil.')
      end

      if @shipping.nil?
        invalid_properties.push('invalid value for "shipping", shipping cannot be nil.')
      end

      if @is_fulfilled_by_amazon.nil?
        invalid_properties.push('invalid value for "is_fulfilled_by_amazon", is_fulfilled_by_amazon cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sub_condition.nil?
      return false if @shipping_time.nil?
      return false if @listing_price.nil?
      return false if @shipping.nil?
      return false if @is_fulfilled_by_amazon.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          my_offer == o.my_offer &&
          offer_type == o.offer_type &&
          sub_condition == o.sub_condition &&
          seller_id == o.seller_id &&
          condition_notes == o.condition_notes &&
          seller_feedback_rating == o.seller_feedback_rating &&
          shipping_time == o.shipping_time &&
          listing_price == o.listing_price &&
          quantity_discount_prices == o.quantity_discount_prices &&
          points == o.points &&
          shipping == o.shipping &&
          ships_from == o.ships_from &&
          is_fulfilled_by_amazon == o.is_fulfilled_by_amazon &&
          prime_information == o.prime_information &&
          is_buy_box_winner == o.is_buy_box_winner &&
          is_featured_merchant == o.is_featured_merchant
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [my_offer, offer_type, sub_condition, seller_id, condition_notes, seller_feedback_rating, shipping_time, listing_price, quantity_discount_prices, points, shipping, ships_from, is_fulfilled_by_amazon, prime_information, is_buy_box_winner, is_featured_merchant].hash
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
        AmzSpApi::ProductPricingApiModel.const_get(type).build_from_hash(value)
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
