=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

OpenAPI spec version: 2021-12-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Pagination
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Pagination' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Pagination.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Pagination' do
    it 'should create an instance of Pagination' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Pagination)
    end
  end
  describe 'test attribute "next_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
