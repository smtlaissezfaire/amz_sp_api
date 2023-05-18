=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'date'

module AmzSpApi::FulfillmentInboundApiModel
  class PackageStatus
    SHIPPED = 'SHIPPED'.freeze
    IN_TRANSIT = 'IN_TRANSIT'.freeze
    DELIVERED = 'DELIVERED'.freeze
    CHECKED_IN = 'CHECKED_IN'.freeze
    RECEIVING = 'RECEIVING'.freeze
    CLOSED = 'CLOSED'.freeze
    DELETED = 'DELETED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PackageStatus.constants.select { |c| PackageStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PackageStatus" if constantValues.empty?
      value
    end
  end
end
