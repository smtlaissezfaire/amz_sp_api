=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'date'

module AmzSpApi::OrdersApiModel
  # Order information.
  class Order
    # An Amazon-defined order identifier, in 3-7-7 format.
    attr_accessor :amazon_order_id

    # A seller-defined order identifier.
    attr_accessor :seller_order_id

    # The date when the order was created.
    attr_accessor :purchase_date

    # The date when the order was last updated.  __Note__: LastUpdateDate is returned with an incorrect date for orders that were last updated before 2009-04-01.
    attr_accessor :last_update_date

    # The current order status.
    attr_accessor :order_status

    # Whether the order was fulfilled by Amazon (AFN) or by the seller (MFN).
    attr_accessor :fulfillment_channel

    # The sales channel of the first item in the order.
    attr_accessor :sales_channel

    # The order channel of the first item in the order.
    attr_accessor :order_channel

    # The shipment service level of the order.
    attr_accessor :ship_service_level

    attr_accessor :order_total

    # The number of items shipped.
    attr_accessor :number_of_items_shipped

    # The number of items unshipped.
    attr_accessor :number_of_items_unshipped

    attr_accessor :payment_execution_detail

    # The payment method for the order. This property is limited to Cash On Delivery (COD) and Convenience Store (CVS) payment methods. Unless you need the specific COD payment information provided by the PaymentExecutionDetailItem object, we recommend using the PaymentMethodDetails property to get payment method information.
    attr_accessor :payment_method

    attr_accessor :payment_method_details

    # The identifier for the marketplace where the order was placed.
    attr_accessor :marketplace_id

    # The shipment service level category of the order.  Possible values: Expedited, FreeEconomy, NextDay, SameDay, SecondDay, Scheduled, Standard.
    attr_accessor :shipment_service_level_category

    attr_accessor :easy_ship_shipment_status

    # Custom ship label for Checkout by Amazon (CBA).
    attr_accessor :cba_displayable_shipping_label

    # The type of the order.
    attr_accessor :order_type

    # The start of the time period within which you have committed to ship the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.  __Note__: EarliestShipDate might not be returned for orders placed before February 1, 2013.
    attr_accessor :earliest_ship_date

    # The end of the time period within which you have committed to ship the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.  __Note__: LatestShipDate might not be returned for orders placed before February 1, 2013.
    attr_accessor :latest_ship_date

    # The start of the time period within which you have committed to fulfill the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.
    attr_accessor :earliest_delivery_date

    # The end of the time period within which you have committed to fulfill the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders that do not have a PendingAvailability, Pending, or Canceled status.
    attr_accessor :latest_delivery_date

    # When true, the order is an Amazon Business order. An Amazon Business order is an order where the buyer is a Verified Business Buyer.
    attr_accessor :is_business_order

    # When true, the order is a seller-fulfilled Amazon Prime order.
    attr_accessor :is_prime

    # When true, the order has a Premium Shipping Service Level Agreement. For more information about Premium Shipping orders, see \"Premium Shipping Options\" in the Seller Central Help for your marketplace.
    attr_accessor :is_premium_order

    # When true, the order is a GlobalExpress order.
    attr_accessor :is_global_express_enabled

    # The order ID value for the order that is being replaced. Returned only if IsReplacementOrder = true.
    attr_accessor :replaced_order_id

    # When true, this is a replacement order.
    attr_accessor :is_replacement_order

    # Indicates the date by which the seller must respond to the buyer with an estimated ship date. Returned only for Sourcing on Demand orders.
    attr_accessor :promise_response_due_date

    # When true, the estimated ship date is set for the order. Returned only for Sourcing on Demand orders.
    attr_accessor :is_estimated_ship_date_set

    # When true, the item within this order was bought and re-sold by Amazon Business EU SARL (ABEU). By buying and instantly re-selling your items, ABEU becomes the seller of record, making your inventory available for sale to customers who would not otherwise purchase from a third-party seller.
    attr_accessor :is_sold_by_ab

    # When true, the item within this order was bought and re-sold by Amazon Business EU SARL (ABEU). By buying and instantly re-selling your items, ABEU becomes the seller of record, making your inventory available for sale to customers who would not otherwise purchase from a third-party seller.
    attr_accessor :is_iba

    attr_accessor :default_ship_from_location_address

    # The buyer's invoicing preference. Available only in the TR marketplace.
    attr_accessor :buyer_invoice_preference

    attr_accessor :buyer_tax_information

    attr_accessor :fulfillment_instruction

    # When true, this order is marked to be picked up from a store rather than delivered.
    attr_accessor :is_ispu

    # When true, this order is marked to be delivered to an Access Point. The access location is chosen by the customer. Access Points include Amazon Hub Lockers, Amazon Hub Counters, and pickup points operated by carriers.
    attr_accessor :is_access_point_order

    attr_accessor :marketplace_tax_info

    # The seller’s friendly name registered in the marketplace.
    attr_accessor :seller_display_name

    attr_accessor :shipping_address

    attr_accessor :buyer_info

    attr_accessor :automated_shipping_settings

    # Whether the order contains regulated items which may require additional approval steps before being fulfilled.
    attr_accessor :has_regulated_items

    attr_accessor :electronic_invoice_status

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'seller_order_id' => :'SellerOrderId',
        :'purchase_date' => :'PurchaseDate',
        :'last_update_date' => :'LastUpdateDate',
        :'order_status' => :'OrderStatus',
        :'fulfillment_channel' => :'FulfillmentChannel',
        :'sales_channel' => :'SalesChannel',
        :'order_channel' => :'OrderChannel',
        :'ship_service_level' => :'ShipServiceLevel',
        :'order_total' => :'OrderTotal',
        :'number_of_items_shipped' => :'NumberOfItemsShipped',
        :'number_of_items_unshipped' => :'NumberOfItemsUnshipped',
        :'payment_execution_detail' => :'PaymentExecutionDetail',
        :'payment_method' => :'PaymentMethod',
        :'payment_method_details' => :'PaymentMethodDetails',
        :'marketplace_id' => :'MarketplaceId',
        :'shipment_service_level_category' => :'ShipmentServiceLevelCategory',
        :'easy_ship_shipment_status' => :'EasyShipShipmentStatus',
        :'cba_displayable_shipping_label' => :'CbaDisplayableShippingLabel',
        :'order_type' => :'OrderType',
        :'earliest_ship_date' => :'EarliestShipDate',
        :'latest_ship_date' => :'LatestShipDate',
        :'earliest_delivery_date' => :'EarliestDeliveryDate',
        :'latest_delivery_date' => :'LatestDeliveryDate',
        :'is_business_order' => :'IsBusinessOrder',
        :'is_prime' => :'IsPrime',
        :'is_premium_order' => :'IsPremiumOrder',
        :'is_global_express_enabled' => :'IsGlobalExpressEnabled',
        :'replaced_order_id' => :'ReplacedOrderId',
        :'is_replacement_order' => :'IsReplacementOrder',
        :'promise_response_due_date' => :'PromiseResponseDueDate',
        :'is_estimated_ship_date_set' => :'IsEstimatedShipDateSet',
        :'is_sold_by_ab' => :'IsSoldByAB',
        :'is_iba' => :'IsIBA',
        :'default_ship_from_location_address' => :'DefaultShipFromLocationAddress',
        :'buyer_invoice_preference' => :'BuyerInvoicePreference',
        :'buyer_tax_information' => :'BuyerTaxInformation',
        :'fulfillment_instruction' => :'FulfillmentInstruction',
        :'is_ispu' => :'IsISPU',
        :'is_access_point_order' => :'IsAccessPointOrder',
        :'marketplace_tax_info' => :'MarketplaceTaxInfo',
        :'seller_display_name' => :'SellerDisplayName',
        :'shipping_address' => :'ShippingAddress',
        :'buyer_info' => :'BuyerInfo',
        :'automated_shipping_settings' => :'AutomatedShippingSettings',
        :'has_regulated_items' => :'HasRegulatedItems',
        :'electronic_invoice_status' => :'ElectronicInvoiceStatus'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amazon_order_id' => :'Object',
        :'seller_order_id' => :'Object',
        :'purchase_date' => :'Object',
        :'last_update_date' => :'Object',
        :'order_status' => :'Object',
        :'fulfillment_channel' => :'Object',
        :'sales_channel' => :'Object',
        :'order_channel' => :'Object',
        :'ship_service_level' => :'Object',
        :'order_total' => :'Object',
        :'number_of_items_shipped' => :'Object',
        :'number_of_items_unshipped' => :'Object',
        :'payment_execution_detail' => :'Object',
        :'payment_method' => :'Object',
        :'payment_method_details' => :'Object',
        :'marketplace_id' => :'Object',
        :'shipment_service_level_category' => :'Object',
        :'easy_ship_shipment_status' => :'Object',
        :'cba_displayable_shipping_label' => :'Object',
        :'order_type' => :'Object',
        :'earliest_ship_date' => :'Object',
        :'latest_ship_date' => :'Object',
        :'earliest_delivery_date' => :'Object',
        :'latest_delivery_date' => :'Object',
        :'is_business_order' => :'Object',
        :'is_prime' => :'Object',
        :'is_premium_order' => :'Object',
        :'is_global_express_enabled' => :'Object',
        :'replaced_order_id' => :'Object',
        :'is_replacement_order' => :'Object',
        :'promise_response_due_date' => :'Object',
        :'is_estimated_ship_date_set' => :'Object',
        :'is_sold_by_ab' => :'Object',
        :'is_iba' => :'Object',
        :'default_ship_from_location_address' => :'Object',
        :'buyer_invoice_preference' => :'Object',
        :'buyer_tax_information' => :'Object',
        :'fulfillment_instruction' => :'Object',
        :'is_ispu' => :'Object',
        :'is_access_point_order' => :'Object',
        :'marketplace_tax_info' => :'Object',
        :'seller_display_name' => :'Object',
        :'shipping_address' => :'Object',
        :'buyer_info' => :'Object',
        :'automated_shipping_settings' => :'Object',
        :'has_regulated_items' => :'Object',
        :'electronic_invoice_status' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::OrdersApiModel::Order` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::OrdersApiModel::Order`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amazon_order_id')
        self.amazon_order_id = attributes[:'amazon_order_id']
      end

      if attributes.key?(:'seller_order_id')
        self.seller_order_id = attributes[:'seller_order_id']
      end

      if attributes.key?(:'purchase_date')
        self.purchase_date = attributes[:'purchase_date']
      end

      if attributes.key?(:'last_update_date')
        self.last_update_date = attributes[:'last_update_date']
      end

      if attributes.key?(:'order_status')
        self.order_status = attributes[:'order_status']
      end

      if attributes.key?(:'fulfillment_channel')
        self.fulfillment_channel = attributes[:'fulfillment_channel']
      end

      if attributes.key?(:'sales_channel')
        self.sales_channel = attributes[:'sales_channel']
      end

      if attributes.key?(:'order_channel')
        self.order_channel = attributes[:'order_channel']
      end

      if attributes.key?(:'ship_service_level')
        self.ship_service_level = attributes[:'ship_service_level']
      end

      if attributes.key?(:'order_total')
        self.order_total = attributes[:'order_total']
      end

      if attributes.key?(:'number_of_items_shipped')
        self.number_of_items_shipped = attributes[:'number_of_items_shipped']
      end

      if attributes.key?(:'number_of_items_unshipped')
        self.number_of_items_unshipped = attributes[:'number_of_items_unshipped']
      end

      if attributes.key?(:'payment_execution_detail')
        self.payment_execution_detail = attributes[:'payment_execution_detail']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'payment_method_details')
        self.payment_method_details = attributes[:'payment_method_details']
      end

      if attributes.key?(:'marketplace_id')
        self.marketplace_id = attributes[:'marketplace_id']
      end

      if attributes.key?(:'shipment_service_level_category')
        self.shipment_service_level_category = attributes[:'shipment_service_level_category']
      end

      if attributes.key?(:'easy_ship_shipment_status')
        self.easy_ship_shipment_status = attributes[:'easy_ship_shipment_status']
      end

      if attributes.key?(:'cba_displayable_shipping_label')
        self.cba_displayable_shipping_label = attributes[:'cba_displayable_shipping_label']
      end

      if attributes.key?(:'order_type')
        self.order_type = attributes[:'order_type']
      end

      if attributes.key?(:'earliest_ship_date')
        self.earliest_ship_date = attributes[:'earliest_ship_date']
      end

      if attributes.key?(:'latest_ship_date')
        self.latest_ship_date = attributes[:'latest_ship_date']
      end

      if attributes.key?(:'earliest_delivery_date')
        self.earliest_delivery_date = attributes[:'earliest_delivery_date']
      end

      if attributes.key?(:'latest_delivery_date')
        self.latest_delivery_date = attributes[:'latest_delivery_date']
      end

      if attributes.key?(:'is_business_order')
        self.is_business_order = attributes[:'is_business_order']
      end

      if attributes.key?(:'is_prime')
        self.is_prime = attributes[:'is_prime']
      end

      if attributes.key?(:'is_premium_order')
        self.is_premium_order = attributes[:'is_premium_order']
      end

      if attributes.key?(:'is_global_express_enabled')
        self.is_global_express_enabled = attributes[:'is_global_express_enabled']
      end

      if attributes.key?(:'replaced_order_id')
        self.replaced_order_id = attributes[:'replaced_order_id']
      end

      if attributes.key?(:'is_replacement_order')
        self.is_replacement_order = attributes[:'is_replacement_order']
      end

      if attributes.key?(:'promise_response_due_date')
        self.promise_response_due_date = attributes[:'promise_response_due_date']
      end

      if attributes.key?(:'is_estimated_ship_date_set')
        self.is_estimated_ship_date_set = attributes[:'is_estimated_ship_date_set']
      end

      if attributes.key?(:'is_sold_by_ab')
        self.is_sold_by_ab = attributes[:'is_sold_by_ab']
      end

      if attributes.key?(:'is_iba')
        self.is_iba = attributes[:'is_iba']
      end

      if attributes.key?(:'default_ship_from_location_address')
        self.default_ship_from_location_address = attributes[:'default_ship_from_location_address']
      end

      if attributes.key?(:'buyer_invoice_preference')
        self.buyer_invoice_preference = attributes[:'buyer_invoice_preference']
      end

      if attributes.key?(:'buyer_tax_information')
        self.buyer_tax_information = attributes[:'buyer_tax_information']
      end

      if attributes.key?(:'fulfillment_instruction')
        self.fulfillment_instruction = attributes[:'fulfillment_instruction']
      end

      if attributes.key?(:'is_ispu')
        self.is_ispu = attributes[:'is_ispu']
      end

      if attributes.key?(:'is_access_point_order')
        self.is_access_point_order = attributes[:'is_access_point_order']
      end

      if attributes.key?(:'marketplace_tax_info')
        self.marketplace_tax_info = attributes[:'marketplace_tax_info']
      end

      if attributes.key?(:'seller_display_name')
        self.seller_display_name = attributes[:'seller_display_name']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'buyer_info')
        self.buyer_info = attributes[:'buyer_info']
      end

      if attributes.key?(:'automated_shipping_settings')
        self.automated_shipping_settings = attributes[:'automated_shipping_settings']
      end

      if attributes.key?(:'has_regulated_items')
        self.has_regulated_items = attributes[:'has_regulated_items']
      end

      if attributes.key?(:'electronic_invoice_status')
        self.electronic_invoice_status = attributes[:'electronic_invoice_status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amazon_order_id.nil?
        invalid_properties.push('invalid value for "amazon_order_id", amazon_order_id cannot be nil.')
      end

      if @purchase_date.nil?
        invalid_properties.push('invalid value for "purchase_date", purchase_date cannot be nil.')
      end

      if @last_update_date.nil?
        invalid_properties.push('invalid value for "last_update_date", last_update_date cannot be nil.')
      end

      if @order_status.nil?
        invalid_properties.push('invalid value for "order_status", order_status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amazon_order_id.nil?
      return false if @purchase_date.nil?
      return false if @last_update_date.nil?
      return false if @order_status.nil?
      order_status_validator = EnumAttributeValidator.new('Object', ['Pending', 'Unshipped', 'PartiallyShipped', 'Shipped', 'Canceled', 'Unfulfillable', 'InvoiceUnconfirmed', 'PendingAvailability'])
      return false unless order_status_validator.valid?(@order_status)
      fulfillment_channel_validator = EnumAttributeValidator.new('Object', ['MFN', 'AFN'])
      return false unless fulfillment_channel_validator.valid?(@fulfillment_channel)
      payment_method_validator = EnumAttributeValidator.new('Object', ['COD', 'CVS', 'Other'])
      return false unless payment_method_validator.valid?(@payment_method)
      order_type_validator = EnumAttributeValidator.new('Object', ['StandardOrder', 'LongLeadTimeOrder', 'Preorder', 'BackOrder', 'SourcingOnDemandOrder'])
      return false unless order_type_validator.valid?(@order_type)
      buyer_invoice_preference_validator = EnumAttributeValidator.new('Object', ['INDIVIDUAL', 'BUSINESS'])
      return false unless buyer_invoice_preference_validator.valid?(@buyer_invoice_preference)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_status Object to be assigned
    def order_status=(order_status)
      validator = EnumAttributeValidator.new('Object', ['Pending', 'Unshipped', 'PartiallyShipped', 'Shipped', 'Canceled', 'Unfulfillable', 'InvoiceUnconfirmed', 'PendingAvailability'])
      unless validator.valid?(order_status)
        fail ArgumentError, "invalid value for \"order_status\", must be one of #{validator.allowable_values}."
      end
      @order_status = order_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fulfillment_channel Object to be assigned
    def fulfillment_channel=(fulfillment_channel)
      validator = EnumAttributeValidator.new('Object', ['MFN', 'AFN'])
      unless validator.valid?(fulfillment_channel)
        fail ArgumentError, "invalid value for \"fulfillment_channel\", must be one of #{validator.allowable_values}."
      end
      @fulfillment_channel = fulfillment_channel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method)
      validator = EnumAttributeValidator.new('Object', ['COD', 'CVS', 'Other'])
      unless validator.valid?(payment_method)
        fail ArgumentError, "invalid value for \"payment_method\", must be one of #{validator.allowable_values}."
      end
      @payment_method = payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_type Object to be assigned
    def order_type=(order_type)
      validator = EnumAttributeValidator.new('Object', ['StandardOrder', 'LongLeadTimeOrder', 'Preorder', 'BackOrder', 'SourcingOnDemandOrder'])
      unless validator.valid?(order_type)
        fail ArgumentError, "invalid value for \"order_type\", must be one of #{validator.allowable_values}."
      end
      @order_type = order_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] buyer_invoice_preference Object to be assigned
    def buyer_invoice_preference=(buyer_invoice_preference)
      validator = EnumAttributeValidator.new('Object', ['INDIVIDUAL', 'BUSINESS'])
      unless validator.valid?(buyer_invoice_preference)
        fail ArgumentError, "invalid value for \"buyer_invoice_preference\", must be one of #{validator.allowable_values}."
      end
      @buyer_invoice_preference = buyer_invoice_preference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amazon_order_id == o.amazon_order_id &&
          seller_order_id == o.seller_order_id &&
          purchase_date == o.purchase_date &&
          last_update_date == o.last_update_date &&
          order_status == o.order_status &&
          fulfillment_channel == o.fulfillment_channel &&
          sales_channel == o.sales_channel &&
          order_channel == o.order_channel &&
          ship_service_level == o.ship_service_level &&
          order_total == o.order_total &&
          number_of_items_shipped == o.number_of_items_shipped &&
          number_of_items_unshipped == o.number_of_items_unshipped &&
          payment_execution_detail == o.payment_execution_detail &&
          payment_method == o.payment_method &&
          payment_method_details == o.payment_method_details &&
          marketplace_id == o.marketplace_id &&
          shipment_service_level_category == o.shipment_service_level_category &&
          easy_ship_shipment_status == o.easy_ship_shipment_status &&
          cba_displayable_shipping_label == o.cba_displayable_shipping_label &&
          order_type == o.order_type &&
          earliest_ship_date == o.earliest_ship_date &&
          latest_ship_date == o.latest_ship_date &&
          earliest_delivery_date == o.earliest_delivery_date &&
          latest_delivery_date == o.latest_delivery_date &&
          is_business_order == o.is_business_order &&
          is_prime == o.is_prime &&
          is_premium_order == o.is_premium_order &&
          is_global_express_enabled == o.is_global_express_enabled &&
          replaced_order_id == o.replaced_order_id &&
          is_replacement_order == o.is_replacement_order &&
          promise_response_due_date == o.promise_response_due_date &&
          is_estimated_ship_date_set == o.is_estimated_ship_date_set &&
          is_sold_by_ab == o.is_sold_by_ab &&
          is_iba == o.is_iba &&
          default_ship_from_location_address == o.default_ship_from_location_address &&
          buyer_invoice_preference == o.buyer_invoice_preference &&
          buyer_tax_information == o.buyer_tax_information &&
          fulfillment_instruction == o.fulfillment_instruction &&
          is_ispu == o.is_ispu &&
          is_access_point_order == o.is_access_point_order &&
          marketplace_tax_info == o.marketplace_tax_info &&
          seller_display_name == o.seller_display_name &&
          shipping_address == o.shipping_address &&
          buyer_info == o.buyer_info &&
          automated_shipping_settings == o.automated_shipping_settings &&
          has_regulated_items == o.has_regulated_items &&
          electronic_invoice_status == o.electronic_invoice_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amazon_order_id, seller_order_id, purchase_date, last_update_date, order_status, fulfillment_channel, sales_channel, order_channel, ship_service_level, order_total, number_of_items_shipped, number_of_items_unshipped, payment_execution_detail, payment_method, payment_method_details, marketplace_id, shipment_service_level_category, easy_ship_shipment_status, cba_displayable_shipping_label, order_type, earliest_ship_date, latest_ship_date, earliest_delivery_date, latest_delivery_date, is_business_order, is_prime, is_premium_order, is_global_express_enabled, replaced_order_id, is_replacement_order, promise_response_due_date, is_estimated_ship_date_set, is_sold_by_ab, is_iba, default_ship_from_location_address, buyer_invoice_preference, buyer_tax_information, fulfillment_instruction, is_ispu, is_access_point_order, marketplace_tax_info, seller_display_name, shipping_address, buyer_info, automated_shipping_settings, has_regulated_items, electronic_invoice_status].hash
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
        AmzSpApi::OrdersApiModel.const_get(type).build_from_hash(value)
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
