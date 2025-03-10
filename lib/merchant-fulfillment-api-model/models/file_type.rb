=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'date'

module AmzSpApi::MerchantFulfillmentApiModel
  class FileType
    APPLICATIONPDF = 'application/pdf'.freeze
    APPLICATIONZPL = 'application/zpl'.freeze
    IMAGEPNG = 'image/png'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = FileType.constants.select { |c| FileType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FileType" if constantValues.empty?
      value
    end
  end
end
