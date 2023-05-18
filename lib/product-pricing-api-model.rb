=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer pricing information for Amazon Marketplace products.  For more information, see the [Product Pricing v2022-05-01 Use Case Guide](doc:product-pricing-api-v2022-05-01-use-case-guide).

OpenAPI spec version: 2022-05-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

# Common files
require 'product-pricing-api-model/api_client'
require 'product-pricing-api-model/api_error'
require 'product-pricing-api-model/version'
require 'product-pricing-api-model/configuration'

# Models
require 'product-pricing-api-model/models/asin'
require 'product-pricing-api-model/models/batch_request'
require 'product-pricing-api-model/models/batch_response'
require 'product-pricing-api-model/models/condition'
require 'product-pricing-api-model/models/error'
require 'product-pricing-api-model/models/error_list'
require 'product-pricing-api-model/models/errors'
require 'product-pricing-api-model/models/featured_offer'
require 'product-pricing-api-model/models/featured_offer_expected_price'
require 'product-pricing-api-model/models/featured_offer_expected_price_request'
require 'product-pricing-api-model/models/featured_offer_expected_price_request_list'
require 'product-pricing-api-model/models/featured_offer_expected_price_request_params'
require 'product-pricing-api-model/models/featured_offer_expected_price_response'
require 'product-pricing-api-model/models/featured_offer_expected_price_response_body'
require 'product-pricing-api-model/models/featured_offer_expected_price_response_list'
require 'product-pricing-api-model/models/featured_offer_expected_price_result'
require 'product-pricing-api-model/models/featured_offer_expected_price_result_list'
require 'product-pricing-api-model/models/fulfillment_type'
require 'product-pricing-api-model/models/get_featured_offer_expected_price_batch_request'
require 'product-pricing-api-model/models/get_featured_offer_expected_price_batch_response'
require 'product-pricing-api-model/models/http_body'
require 'product-pricing-api-model/models/http_headers'
require 'product-pricing-api-model/models/http_method'
require 'product-pricing-api-model/models/http_status_line'
require 'product-pricing-api-model/models/marketplace_id'
require 'product-pricing-api-model/models/money_type'
require 'product-pricing-api-model/models/offer_identifier'
require 'product-pricing-api-model/models/points'
require 'product-pricing-api-model/models/price'
require 'product-pricing-api-model/models/sku'

# APIs
require 'product-pricing-api-model/api/product_pricing_api'

module AmzSpApi::ProductPricingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ProductPricingApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
