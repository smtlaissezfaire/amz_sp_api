=begin
#Selling Partner API for Sellers

#The Selling Partner API for Sellers lets you retrieve information on behalf of sellers about their seller account, such as the marketplaces they participate in. Along with listing the marketplaces that a seller can sell in, the API also provides additional information about the marketplace such as the default language and the default currency. The API also provides seller-specific information such as whether the seller has suspended listings in that marketplace.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::SellersApiModel::SellersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SellersApi' do
  before do
    # run before each test
    @instance = AmzSpApi::SellersApiModel::SellersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SellersApi' do
    it 'should create an instance of SellersApi' do
      expect(@instance).to be_instance_of(AmzSpApi::SellersApiModel::SellersApi)
    end
  end

  # unit tests for get_marketplace_participations
  # Returns a list of marketplaces that the seller submitting the request can sell in and information about the seller&#x27;s participation in those marketplaces.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.016 | 15 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param [Hash] opts the optional parameters
  # @return [GetMarketplaceParticipationsResponse]
  describe 'get_marketplace_participations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
