=begin
#Selling Partner API for Direct Fulfillment Shipping

#The Selling Partner API for Direct Fulfillment Shipping provides programmatic access to a direct fulfillment vendor's shipping data.

OpenAPI spec version: 2021-12-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

module AmzSpApi::VendorDirectFulfillmentShippingApiModel
  class VendorShippingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a packing slip based on the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param purchase_order_number The purchaseOrderNumber for the packing slip you want.
    # @param [Hash] opts the optional parameters
    # @return [PackingSlip]
    def get_packing_slip(purchase_order_number, opts = {})
      data, _status_code, _headers = get_packing_slip_with_http_info(purchase_order_number, opts)
      data
    end

    # Returns a packing slip based on the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param purchase_order_number The purchaseOrderNumber for the packing slip you want.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PackingSlip, Integer, Hash)>] PackingSlip data, response status code and response headers
    def get_packing_slip_with_http_info(purchase_order_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.get_packing_slip ...'
      end
      # verify the required parameter 'purchase_order_number' is set
      if @api_client.config.client_side_validation && purchase_order_number.nil?
        fail ArgumentError, "Missing the required parameter 'purchase_order_number' when calling VendorShippingApi.get_packing_slip"
      end
      # resource path
      local_var_path = '/vendor/directFulfillment/shipping/2021-12-28/packingSlips/{purchaseOrderNumber}'.sub('{' + 'purchaseOrderNumber' + '}', purchase_order_number.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PackingSlip' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#get_packing_slip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of packing slips for the purchase orders that match the criteria specified. Date range to search must not be more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param created_after Packing slips that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param created_before Packing slips that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ship_from_party_id The vendor warehouseId for order fulfillment. If not specified the result will contain orders for all warehouses.
    # @option opts [Integer] :limit The limit to the number of records returned
    # @option opts [String] :sort_order Sort ASC or DESC by packing slip creation date. (default to ASC)
    # @option opts [String] :next_token Used for pagination when there are more packing slips than the specified result size limit. The token value is returned in the previous API call.
    # @return [PackingSlipList]
    def get_packing_slips(created_after, created_before, opts = {})
      data, _status_code, _headers = get_packing_slips_with_http_info(created_after, created_before, opts)
      data
    end

    # Returns a list of packing slips for the purchase orders that match the criteria specified. Date range to search must not be more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param created_after Packing slips that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param created_before Packing slips that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ship_from_party_id The vendor warehouseId for order fulfillment. If not specified the result will contain orders for all warehouses.
    # @option opts [Integer] :limit The limit to the number of records returned
    # @option opts [String] :sort_order Sort ASC or DESC by packing slip creation date.
    # @option opts [String] :next_token Used for pagination when there are more packing slips than the specified result size limit. The token value is returned in the previous API call.
    # @return [Array<(PackingSlipList, Integer, Hash)>] PackingSlipList data, response status code and response headers
    def get_packing_slips_with_http_info(created_after, created_before, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.get_packing_slips ...'
      end
      # verify the required parameter 'created_after' is set
      if @api_client.config.client_side_validation && created_after.nil?
        fail ArgumentError, "Missing the required parameter 'created_after' when calling VendorShippingApi.get_packing_slips"
      end
      # verify the required parameter 'created_before' is set
      if @api_client.config.client_side_validation && created_before.nil?
        fail ArgumentError, "Missing the required parameter 'created_before' when calling VendorShippingApi.get_packing_slips"
      end
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !['ASC', 'DESC'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = '/vendor/directFulfillment/shipping/2021-12-28/packingSlips'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'createdAfter'] = created_after
      query_params[:'createdBefore'] = created_before
      query_params[:'shipFromPartyId'] = opts[:'ship_from_party_id'] if !opts[:'ship_from_party_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PackingSlipList' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#get_packing_slips\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [TransactionReference]
    def submit_shipment_confirmations(body, opts = {})
      data, _status_code, _headers = submit_shipment_confirmations_with_http_info(body, opts)
      data
    end

    # Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionReference, Integer, Hash)>] TransactionReference data, response status code and response headers
    def submit_shipment_confirmations_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.submit_shipment_confirmations ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling VendorShippingApi.submit_shipment_confirmations"
      end
      # resource path
      local_var_path = '/vendor/directFulfillment/shipping/2021-12-28/shipmentConfirmations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'TransactionReference' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#submit_shipment_confirmations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This operation is only to be used by Vendor-Own-Carrier (VOC) vendors. Calling this API submits a shipment status update for the package that a vendor has shipped. It will provide the Amazon customer visibility on their order, when the package is outside of Amazon Network visibility.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [TransactionReference]
    def submit_shipment_status_updates(body, opts = {})
      data, _status_code, _headers = submit_shipment_status_updates_with_http_info(body, opts)
      data
    end

    # This operation is only to be used by Vendor-Own-Carrier (VOC) vendors. Calling this API submits a shipment status update for the package that a vendor has shipped. It will provide the Amazon customer visibility on their order, when the package is outside of Amazon Network visibility.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionReference, Integer, Hash)>] TransactionReference data, response status code and response headers
    def submit_shipment_status_updates_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.submit_shipment_status_updates ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling VendorShippingApi.submit_shipment_status_updates"
      end
      # resource path
      local_var_path = '/vendor/directFulfillment/shipping/2021-12-28/shipmentStatusUpdates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'TransactionReference' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#submit_shipment_status_updates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
