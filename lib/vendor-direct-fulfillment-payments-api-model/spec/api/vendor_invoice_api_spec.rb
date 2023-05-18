=begin
#Selling Partner API for Direct Fulfillment Payments

#The Selling Partner API for Direct Fulfillment Payments provides programmatic access to a direct fulfillment vendor's invoice data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::VendorInvoiceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VendorInvoiceApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::VendorInvoiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorInvoiceApi' do
    it 'should create an instance of VendorInvoiceApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::VendorInvoiceApi)
    end
  end

  # unit tests for submit_invoice
  # Submits one or more invoices for a vendor&#x27;s direct fulfillment orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SubmitInvoiceResponse]
  describe 'submit_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
