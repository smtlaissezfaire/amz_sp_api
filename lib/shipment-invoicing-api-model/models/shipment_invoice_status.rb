=begin
#Selling Partner API for Shipment Invoicing

#The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'date'

module AmzSpApi::ShipmentInvoicingApiModel
  class ShipmentInvoiceStatus
    PROCESSING = 'Processing'.freeze
    ACCEPTED = 'Accepted'.freeze
    ERRORED = 'Errored'.freeze
    NOT_FOUND = 'NotFound'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ShipmentInvoiceStatus.constants.select { |c| ShipmentInvoiceStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ShipmentInvoiceStatus" if constantValues.empty?
      value
    end
  end
end
