=begin
#Selling Partner API for FBA Inventory

#The Selling Partner API for FBA Inventory lets you programmatically retrieve information about inventory in Amazon's fulfillment network.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

# Common files
require 'fba-inventory-api-model/api_client'
require 'fba-inventory-api-model/api_error'
require 'fba-inventory-api-model/version'
require 'fba-inventory-api-model/configuration'

# Models
require 'fba-inventory-api-model/models/error'
require 'fba-inventory-api-model/models/error_list'
require 'fba-inventory-api-model/models/get_inventory_summaries_response'
require 'fba-inventory-api-model/models/get_inventory_summaries_result'
require 'fba-inventory-api-model/models/granularity'
require 'fba-inventory-api-model/models/inventory_details'
require 'fba-inventory-api-model/models/inventory_summaries'
require 'fba-inventory-api-model/models/inventory_summary'
require 'fba-inventory-api-model/models/pagination'
require 'fba-inventory-api-model/models/researching_quantity'
require 'fba-inventory-api-model/models/researching_quantity_entry'
require 'fba-inventory-api-model/models/reserved_quantity'
require 'fba-inventory-api-model/models/unfulfillable_quantity'

# APIs
require 'fba-inventory-api-model/api/fba_inventory_api'

module AmzSpApi::FbaInventoryApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::FbaInventoryApiModel.configure do |config|
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
