# AmzSpApi::FbaInventoryApiModel::FbaInventoryApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_inventory_summaries**](FbaInventoryApi.md#get_inventory_summaries) | **GET** /fba/inventory/v1/summaries | 

# **get_inventory_summaries**
> GetInventorySummariesResponse get_inventory_summaries(granularity_type, granularity_id, marketplace_ids, opts)



Returns a list of inventory summaries. The summaries returned depend on the presence or absence of the `startDateTime`, `sellerSkus` and `sellerSku` parameters:  - All inventory summaries with available details are returned when the `startDateTime`, `sellerSkus` and `sellerSku` parameters are omitted. - When `startDateTime` is provided, the operation returns inventory summaries that have had changes after the date and time specified. The `sellerSkus` and `sellerSku` parameters are ignored. **Important:** To avoid errors, use both `startDateTime` and `nextToken` to get the next page of inventory summaries that have changed after the date and time specified. - When the `sellerSkus` parameter is provided, the operation returns inventory summaries for only the specified `sellerSkus`. The `sellerSku` parameter is ignored. - When the `sellerSku` parameter is provided, the operation returns inventory summaries for only the specified `sellerSku`.  **Note:** The parameters associated with this operation may contain special characters that must be encoded to successfully call the API. To avoid errors with SKUs when encoding URLs, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fba-inventory-api-model'

api_instance = AmzSpApi::FbaInventoryApiModel::FbaInventoryApi.new
granularity_type = 'granularity_type_example' # String | The granularity type for the inventory aggregation level.
granularity_id = 'granularity_id_example' # String | The granularity ID for the inventory aggregation level.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace ID for the marketplace for which to return inventory summaries.
opts = { 
  details: false, # BOOLEAN | true to return inventory summaries with additional summarized inventory details and quantities. Otherwise, returns inventory summaries only (default value).
  start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A start date and time in ISO8601 format. If specified, all inventory summaries that have changed since then are returned. You must specify a date and time that is no earlier than 18 months prior to the date and time when you call the API. Note: Changes in inboundWorkingQuantity, inboundShippedQuantity and inboundReceivingQuantity are not detected.
  seller_skus: ['seller_skus_example'], # Array<String> | A list of seller SKUs for which to return inventory summaries. You may specify up to 50 SKUs.
  seller_sku: 'seller_sku_example', # String | A single seller SKU used for querying the specified seller SKU inventory summaries.
  next_token: 'next_token_example' # String | String token returned in the response of your previous request. The string token will expire 30 seconds after being created.
}

begin
  result = api_instance.get_inventory_summaries(granularity_type, granularity_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::FbaInventoryApiModel::ApiError => e
  puts "Exception when calling FbaInventoryApi->get_inventory_summaries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity_type** | **String**| The granularity type for the inventory aggregation level. | 
 **granularity_id** | **String**| The granularity ID for the inventory aggregation level. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| The marketplace ID for the marketplace for which to return inventory summaries. | 
 **details** | **BOOLEAN**| true to return inventory summaries with additional summarized inventory details and quantities. Otherwise, returns inventory summaries only (default value). | [optional] [default to false]
 **start_date_time** | **DateTime**| A start date and time in ISO8601 format. If specified, all inventory summaries that have changed since then are returned. You must specify a date and time that is no earlier than 18 months prior to the date and time when you call the API. Note: Changes in inboundWorkingQuantity, inboundShippedQuantity and inboundReceivingQuantity are not detected. | [optional] 
 **seller_skus** | [**Array&lt;String&gt;**](String.md)| A list of seller SKUs for which to return inventory summaries. You may specify up to 50 SKUs. | [optional] 
 **seller_sku** | **String**| A single seller SKU used for querying the specified seller SKU inventory summaries. | [optional] 
 **next_token** | **String**| String token returned in the response of your previous request. The string token will expire 30 seconds after being created. | [optional] 

### Return type

[**GetInventorySummariesResponse**](GetInventorySummariesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



