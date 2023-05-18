=begin
#Selling Partner API for Vendor Direct Fulfillment Sandbox Test Data

#The Selling Partner API for Vendor Direct Fulfillment Sandbox Test Data provides programmatic access to vendor direct fulfillment sandbox test data.

OpenAPI spec version: 2021-10-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::VendorDFSandboxtransactionstatusApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VendorDFSandboxtransactionstatusApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::VendorDFSandboxtransactionstatusApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorDFSandboxtransactionstatusApi' do
    it 'should create an instance of VendorDFSandboxtransactionstatusApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::VendorDFSandboxtransactionstatusApi)
    end
  end

  # unit tests for get_order_scenarios
  # Returns the status of the transaction indicated by the specified transactionId. If the transaction was successful, also returns the requested test order data.
  # @param transaction_id The transaction identifier returned in the response to the generateOrderScenarios operation.
  # @param [Hash] opts the optional parameters
  # @return [TransactionStatus]
  describe 'get_order_scenarios test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
