=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'date'

module AmzSpApi::MerchantFulfillmentApiModel
  class LabelFormat
    PDF = 'PDF'.freeze
    PNG = 'PNG'.freeze
    ZPL203 = 'ZPL203'.freeze
    ZPL300 = 'ZPL300'.freeze
    SHIPPING_SERVICE_DEFAULT = 'ShippingServiceDefault'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LabelFormat.constants.select { |c| LabelFormat::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LabelFormat" if constantValues.empty?
      value
    end
  end
end
