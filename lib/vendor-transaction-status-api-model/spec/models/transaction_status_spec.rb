=begin
#Selling Partner API for Retail Procurement Transaction Status

#The Selling Partner API for Retail Procurement Transaction Status provides programmatic access to status information on specific asynchronous POST transactions for vendors.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorTransactionStatusApiModel::TransactionStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransactionStatus' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorTransactionStatusApiModel::TransactionStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionStatus' do
    it 'should create an instance of TransactionStatus' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorTransactionStatusApiModel::TransactionStatus)
    end
  end
  describe 'test attribute "transaction_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
