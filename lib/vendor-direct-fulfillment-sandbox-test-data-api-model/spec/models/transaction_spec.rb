=begin
#Selling Partner API for Vendor Direct Fulfillment Sandbox Test Data

#The Selling Partner API for Vendor Direct Fulfillment Sandbox Test Data provides programmatic access to vendor direct fulfillment sandbox test data.

OpenAPI spec version: 2021-10-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::Transaction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Transaction' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::Transaction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Transaction' do
    it 'should create an instance of Transaction' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::Transaction)
    end
  end
  describe 'test attribute "transaction_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FAILURE", "PROCESSING", "SUCCESS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "test_case_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
