=begin
#Selling Partner API for Retail Procurement Shipments

#The Selling Partner API for Retail Procurement Shipments provides programmatic access to retail shipping data for vendors.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorShipmentsApiModel::VendorShippingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VendorShippingApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorShipmentsApiModel::VendorShippingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorShippingApi' do
    it 'should create an instance of VendorShippingApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorShipmentsApiModel::VendorShippingApi)
    end
  end

  # unit tests for get_shipment_details
  # Returns the Details about Shipment, Carrier Details,  status of the shipment, container details and other details related to shipment based on the filter parameters value that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The limit to the number of records returned. Default value is 50 records.
  # @option opts [String] :sort_order Sort in ascending or descending order by purchase order creation date.
  # @option opts [String] :next_token Used for pagination when there are more shipments than the specified result size limit.
  # @option opts [DateTime] :created_after Get Shipment Details that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :created_before Get Shipment Details that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :shipment_confirmed_before Get Shipment Details by passing Shipment confirmed create Date Before. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :shipment_confirmed_after Get Shipment Details by passing Shipment confirmed create Date After. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :package_label_created_before Get Shipment Details by passing Package label create Date by buyer. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :package_label_created_after Get Shipment Details by passing Package label create Date After by buyer. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :shipped_before Get Shipment Details by passing Shipped Date Before. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :shipped_after Get Shipment Details by passing Shipped Date After. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :estimated_delivery_before Get Shipment Details by passing Estimated Delivery Date Before. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :estimated_delivery_after Get Shipment Details by passing Estimated Delivery Date Before. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :shipment_delivery_before Get Shipment Details by passing Shipment Delivery Date Before. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :shipment_delivery_after Get Shipment Details by passing Shipment Delivery Date After. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :requested_pick_up_before Get Shipment Details by passing Before Requested pickup date. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :requested_pick_up_after Get Shipment Details by passing After Requested pickup date. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :scheduled_pick_up_before Get Shipment Details by passing Before scheduled pickup date. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :scheduled_pick_up_after Get Shipment Details by passing After Scheduled pickup date. Must be in ISO-8601 date/time format.
  # @option opts [String] :current_shipment_status Get Shipment Details by passing Current shipment status.
  # @option opts [String] :vendor_shipment_identifier Get Shipment Details by passing Vendor Shipment ID
  # @option opts [String] :buyer_reference_number Get Shipment Details by passing buyer Reference ID
  # @option opts [String] :buyer_warehouse_code Get Shipping Details based on buyer warehouse code. This value should be same as &#x27;shipToParty.partyId&#x27; in the Shipment.
  # @option opts [String] :seller_warehouse_code Get Shipping Details based on vendor warehouse code. This value should be same as &#x27;sellingParty.partyId&#x27; in the Shipment.
  # @return [GetShipmentDetailsResponse]
  describe 'get_shipment_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_shipment_labels
  # Returns transport Labels based on the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The limit to the number of records returned. Default value is 50 records.
  # @option opts [String] :sort_order Sort in ascending or descending order by transport label creation date.
  # @option opts [String] :next_token Used for pagination when there are more transport label than the specified result size limit.
  # @option opts [DateTime] :label_created_after transport Labels that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  # @option opts [DateTime] :labelcreated_before transport Labels that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  # @option opts [String] :buyer_reference_number Get transport labels by passing Buyer Reference Number to retreive the corresponding transport label.
  # @option opts [String] :vendor_shipment_identifier Get transport labels by passing Vendor Shipment ID to retreive the corresponding transport label.
  # @option opts [String] :seller_warehouse_code Get Shipping labels based Vendor Warehouse code. This value should be same as &#x27;shipFromParty.partyId&#x27; in the Shipment.
  # @return [GetShipmentLabels]
  describe 'get_shipment_labels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_shipment_confirmations
  # Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SubmitShipmentConfirmationsResponse]
  describe 'submit_shipment_confirmations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_shipments
  # Submits one or more shipment request for vendor Orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SubmitShipmentConfirmationsResponse]
  describe 'submit_shipments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
