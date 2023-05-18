=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer pricing information for Amazon Marketplace products.  For more information, see the [Product Pricing v2022-05-01 Use Case Guide](doc:product-pricing-api-v2022-05-01-use-case-guide).

OpenAPI spec version: 2022-05-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::ProductPricingApiModel::ProductPricingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductPricingApi' do
  before do
    # run before each test
    @instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductPricingApi' do
    it 'should create an instance of ProductPricingApi' do
      expect(@instance).to be_instance_of(AmzSpApi::ProductPricingApiModel::ProductPricingApi)
    end
  end

  # unit tests for get_featured_offer_expected_price_batch
  # Returns the set of responses that correspond to the batched list of up to 40 requests defined in the request body. The response for each successful (HTTP status code 200) request in the set includes the computed listing price at or below which a seller can expect to become the featured offer (before applicable promotions). This is called the featured offer expected price (FOEP). Featured offer is not guaranteed, because competing offers may change, and different offers may be featured based on other factors, including fulfillment capabilities to a specific customer. The response to an unsuccessful request includes the available error text.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.033 | 1 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [GetFeaturedOfferExpectedPriceBatchResponse]
  describe 'get_featured_offer_expected_price_batch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
