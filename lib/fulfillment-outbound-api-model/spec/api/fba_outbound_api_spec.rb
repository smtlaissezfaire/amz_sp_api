=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FbaOutboundApi' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FbaOutboundApi' do
    it 'should create an instance of FbaOutboundApi' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi)
    end
  end

  # unit tests for cancel_fulfillment_order
  # Requests that Amazon stop attempting to fulfill the fulfillment order indicated by the specified order identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_fulfillment_order_id The identifier assigned to the item by the seller when the fulfillment order was created.
  # @param [Hash] opts the optional parameters
  # @return [CancelFulfillmentOrderResponse]
  describe 'cancel_fulfillment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_fulfillment_order
  # Requests that Amazon ship items from the seller&#x27;s inventory in Amazon&#x27;s fulfillment network to a destination address.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [CreateFulfillmentOrderResponse]
  describe 'create_fulfillment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_fulfillment_return
  # Creates a fulfillment return.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param seller_fulfillment_order_id An identifier assigned by the seller to the fulfillment order at the time it was created. The seller uses their own records to find the correct SellerFulfillmentOrderId value based on the buyer&#x27;s request to return items.
  # @param [Hash] opts the optional parameters
  # @return [CreateFulfillmentReturnResponse]
  describe 'create_fulfillment_return test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_inventory
  # Returns a list of inventory items that are eligible for the fulfillment feature you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id The marketplace for which to return a list of the inventory that is eligible for the specified feature.
  # @param feature_name The name of the feature for which to return a list of eligible inventory.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_token A string token returned in the response to your previous request that is used to return the next response page. A value of null will return the first page.
  # @return [GetFeatureInventoryResponse]
  describe 'get_feature_inventory test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_sku
  # Returns the number of items with the sellerSKU you specify that can have orders fulfilled using the specified feature. Note that if the sellerSKU isn&#x27;t eligible, the response will contain an empty skuInfo object.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id The marketplace for which to return the count.
  # @param feature_name The name of the feature.
  # @param seller_sku Used to identify an item in the given marketplace. SellerSKU is qualified by the seller&#x27;s SellerId, which is included with every operation that you submit.
  # @param [Hash] opts the optional parameters
  # @return [GetFeatureSkuResponse]
  describe 'get_feature_sku test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_features
  # Returns a list of features available for Multi-Channel Fulfillment orders in the marketplace you specify, and whether the seller for which you made the call is enrolled for each feature.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id The marketplace for which to return the list of features.
  # @param [Hash] opts the optional parameters
  # @return [GetFeaturesResponse]
  describe 'get_features test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fulfillment_order
  # Returns the fulfillment order indicated by the specified order identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_fulfillment_order_id The identifier assigned to the item by the seller when the fulfillment order was created.
  # @param [Hash] opts the optional parameters
  # @return [GetFulfillmentOrderResponse]
  describe 'get_fulfillment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fulfillment_preview
  # Returns a list of fulfillment order previews based on shipping criteria that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [GetFulfillmentPreviewResponse]
  describe 'get_fulfillment_preview test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_package_tracking_details
  # Returns delivery tracking information for a package in an outbound shipment for a Multi-Channel Fulfillment order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param package_number The unencrypted package identifier returned by the getFulfillmentOrder operation.
  # @param [Hash] opts the optional parameters
  # @return [GetPackageTrackingDetailsResponse]
  describe 'get_package_tracking_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_fulfillment_orders
  # Returns a list of fulfillment orders fulfilled after (or at) a specified date-time, or indicated by the next token parameter.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :query_start_date A date used to select fulfillment orders that were last updated after (or at) a specified time. An update is defined as any change in fulfillment order status, including the creation of a new fulfillment order.
  # @option opts [String] :next_token A string token returned in the response to your previous request.
  # @return [ListAllFulfillmentOrdersResponse]
  describe 'list_all_fulfillment_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_return_reason_codes
  # Returns a list of return reason codes for a seller SKU in a given marketplace.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param seller_sku The seller SKU for which return reason codes are required.
  # @param language The language that the TranslatedDescription property of the ReasonCodeDetails response object should be translated into.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :marketplace_id The marketplace for which the seller wants return reason codes.
  # @option opts [String] :seller_fulfillment_order_id The identifier assigned to the item by the seller when the fulfillment order was created. The service uses this value to determine the marketplace for which the seller wants return reason codes.
  # @return [ListReturnReasonCodesResponse]
  describe 'list_return_reason_codes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fulfillment_order
  # Updates and/or requests shipment for a fulfillment order with an order hold on it.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param seller_fulfillment_order_id The identifier assigned to the item by the seller when the fulfillment order was created.
  # @param [Hash] opts the optional parameters
  # @return [UpdateFulfillmentOrderResponse]
  describe 'update_fulfillment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
