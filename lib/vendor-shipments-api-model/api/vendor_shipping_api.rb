=begin
#Selling Partner API for Retail Procurement Shipments

#The Selling Partner API for Retail Procurement Shipments provides programmatic access to retail shipping data for vendors.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

module AmzSpApi::VendorShipmentsApiModel
  class VendorShippingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the Details about Shipment, Carrier Details,  status of the shipment, container details and other details related to shipment based on the filter parameters value that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The limit to the number of records returned. Default value is 50 records.
    # @option opts [String] :sort_order Sort in ascending or descending order by purchase order creation date.
    # @option opts [String] :next_token Used for pagination when there are more shipments than the specified result size limit.
    # @option opts [DateTime] :created_after Get Shipment Details that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :created_before Get Shipment Details that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_confirmed_before Get Shipment Details by passing Shipment confirmed create Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_confirmed_after Get Shipment Details by passing Shipment confirmed create Date After. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :package_label_created_before Get Shipment Details by passing Package label create Date by buyer. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :package_label_created_after Get Shipment Details by passing Package label create Date After by buyer. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipped_before Get Shipment Details by passing Shipped Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipped_after Get Shipment Details by passing Shipped Date After. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :estimated_delivery_before Get Shipment Details by passing Estimated Delivery Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :estimated_delivery_after Get Shipment Details by passing Estimated Delivery Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_delivery_before Get Shipment Details by passing Shipment Delivery Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_delivery_after Get Shipment Details by passing Shipment Delivery Date After. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :requested_pick_up_before Get Shipment Details by passing Before Requested pickup date. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :requested_pick_up_after Get Shipment Details by passing After Requested pickup date. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :scheduled_pick_up_before Get Shipment Details by passing Before scheduled pickup date. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :scheduled_pick_up_after Get Shipment Details by passing After Scheduled pickup date. Must be in ISO-8601 date/time format.
    # @option opts [String] :current_shipment_status Get Shipment Details by passing Current shipment status.
    # @option opts [String] :vendor_shipment_identifier Get Shipment Details by passing Vendor Shipment ID
    # @option opts [String] :buyer_reference_number Get Shipment Details by passing buyer Reference ID
    # @option opts [String] :buyer_warehouse_code Get Shipping Details based on buyer warehouse code. This value should be same as &#x27;shipToParty.partyId&#x27; in the Shipment.
    # @option opts [String] :seller_warehouse_code Get Shipping Details based on vendor warehouse code. This value should be same as &#x27;sellingParty.partyId&#x27; in the Shipment.
    # @return [GetShipmentDetailsResponse]
    def get_shipment_details(opts = {})
      data, _status_code, _headers = get_shipment_details_with_http_info(opts)
      data
    end

    # Returns the Details about Shipment, Carrier Details,  status of the shipment, container details and other details related to shipment based on the filter parameters value that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The limit to the number of records returned. Default value is 50 records.
    # @option opts [String] :sort_order Sort in ascending or descending order by purchase order creation date.
    # @option opts [String] :next_token Used for pagination when there are more shipments than the specified result size limit.
    # @option opts [DateTime] :created_after Get Shipment Details that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :created_before Get Shipment Details that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_confirmed_before Get Shipment Details by passing Shipment confirmed create Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_confirmed_after Get Shipment Details by passing Shipment confirmed create Date After. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :package_label_created_before Get Shipment Details by passing Package label create Date by buyer. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :package_label_created_after Get Shipment Details by passing Package label create Date After by buyer. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipped_before Get Shipment Details by passing Shipped Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipped_after Get Shipment Details by passing Shipped Date After. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :estimated_delivery_before Get Shipment Details by passing Estimated Delivery Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :estimated_delivery_after Get Shipment Details by passing Estimated Delivery Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_delivery_before Get Shipment Details by passing Shipment Delivery Date Before. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :shipment_delivery_after Get Shipment Details by passing Shipment Delivery Date After. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :requested_pick_up_before Get Shipment Details by passing Before Requested pickup date. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :requested_pick_up_after Get Shipment Details by passing After Requested pickup date. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :scheduled_pick_up_before Get Shipment Details by passing Before scheduled pickup date. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :scheduled_pick_up_after Get Shipment Details by passing After Scheduled pickup date. Must be in ISO-8601 date/time format.
    # @option opts [String] :current_shipment_status Get Shipment Details by passing Current shipment status.
    # @option opts [String] :vendor_shipment_identifier Get Shipment Details by passing Vendor Shipment ID
    # @option opts [String] :buyer_reference_number Get Shipment Details by passing buyer Reference ID
    # @option opts [String] :buyer_warehouse_code Get Shipping Details based on buyer warehouse code. This value should be same as &#x27;shipToParty.partyId&#x27; in the Shipment.
    # @option opts [String] :seller_warehouse_code Get Shipping Details based on vendor warehouse code. This value should be same as &#x27;sellingParty.partyId&#x27; in the Shipment.
    # @return [Array<(GetShipmentDetailsResponse, Integer, Hash)>] GetShipmentDetailsResponse data, response status code and response headers
    def get_shipment_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.get_shipment_details ...'
      end
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !['ASC', 'DESC'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = '/vendor/shipping/v1/shipments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'createdAfter'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'createdBefore'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'shipmentConfirmedBefore'] = opts[:'shipment_confirmed_before'] if !opts[:'shipment_confirmed_before'].nil?
      query_params[:'shipmentConfirmedAfter'] = opts[:'shipment_confirmed_after'] if !opts[:'shipment_confirmed_after'].nil?
      query_params[:'packageLabelCreatedBefore'] = opts[:'package_label_created_before'] if !opts[:'package_label_created_before'].nil?
      query_params[:'packageLabelCreatedAfter'] = opts[:'package_label_created_after'] if !opts[:'package_label_created_after'].nil?
      query_params[:'shippedBefore'] = opts[:'shipped_before'] if !opts[:'shipped_before'].nil?
      query_params[:'shippedAfter'] = opts[:'shipped_after'] if !opts[:'shipped_after'].nil?
      query_params[:'estimatedDeliveryBefore'] = opts[:'estimated_delivery_before'] if !opts[:'estimated_delivery_before'].nil?
      query_params[:'estimatedDeliveryAfter'] = opts[:'estimated_delivery_after'] if !opts[:'estimated_delivery_after'].nil?
      query_params[:'shipmentDeliveryBefore'] = opts[:'shipment_delivery_before'] if !opts[:'shipment_delivery_before'].nil?
      query_params[:'shipmentDeliveryAfter'] = opts[:'shipment_delivery_after'] if !opts[:'shipment_delivery_after'].nil?
      query_params[:'requestedPickUpBefore'] = opts[:'requested_pick_up_before'] if !opts[:'requested_pick_up_before'].nil?
      query_params[:'requestedPickUpAfter'] = opts[:'requested_pick_up_after'] if !opts[:'requested_pick_up_after'].nil?
      query_params[:'scheduledPickUpBefore'] = opts[:'scheduled_pick_up_before'] if !opts[:'scheduled_pick_up_before'].nil?
      query_params[:'scheduledPickUpAfter'] = opts[:'scheduled_pick_up_after'] if !opts[:'scheduled_pick_up_after'].nil?
      query_params[:'currentShipmentStatus'] = opts[:'current_shipment_status'] if !opts[:'current_shipment_status'].nil?
      query_params[:'vendorShipmentIdentifier'] = opts[:'vendor_shipment_identifier'] if !opts[:'vendor_shipment_identifier'].nil?
      query_params[:'buyerReferenceNumber'] = opts[:'buyer_reference_number'] if !opts[:'buyer_reference_number'].nil?
      query_params[:'buyerWarehouseCode'] = opts[:'buyer_warehouse_code'] if !opts[:'buyer_warehouse_code'].nil?
      query_params[:'sellerWarehouseCode'] = opts[:'seller_warehouse_code'] if !opts[:'seller_warehouse_code'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetShipmentDetailsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#get_shipment_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns transport Labels based on the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The limit to the number of records returned. Default value is 50 records.
    # @option opts [String] :sort_order Sort in ascending or descending order by transport label creation date.
    # @option opts [String] :next_token Used for pagination when there are more transport label than the specified result size limit.
    # @option opts [DateTime] :label_created_after transport Labels that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :labelcreated_before transport Labels that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [String] :buyer_reference_number Get transport labels by passing Buyer Reference Number to retreive the corresponding transport label.
    # @option opts [String] :vendor_shipment_identifier Get transport labels by passing Vendor Shipment ID to retreive the corresponding transport label.
    # @option opts [String] :seller_warehouse_code Get Shipping labels based Vendor Warehouse code. This value should be same as &#x27;shipFromParty.partyId&#x27; in the Shipment.
    # @return [GetShipmentLabels]
    def get_shipment_labels(opts = {})
      data, _status_code, _headers = get_shipment_labels_with_http_info(opts)
      data
    end

    # Returns transport Labels based on the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The limit to the number of records returned. Default value is 50 records.
    # @option opts [String] :sort_order Sort in ascending or descending order by transport label creation date.
    # @option opts [String] :next_token Used for pagination when there are more transport label than the specified result size limit.
    # @option opts [DateTime] :label_created_after transport Labels that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [DateTime] :labelcreated_before transport Labels that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
    # @option opts [String] :buyer_reference_number Get transport labels by passing Buyer Reference Number to retreive the corresponding transport label.
    # @option opts [String] :vendor_shipment_identifier Get transport labels by passing Vendor Shipment ID to retreive the corresponding transport label.
    # @option opts [String] :seller_warehouse_code Get Shipping labels based Vendor Warehouse code. This value should be same as &#x27;shipFromParty.partyId&#x27; in the Shipment.
    # @return [Array<(GetShipmentLabels, Integer, Hash)>] GetShipmentLabels data, response status code and response headers
    def get_shipment_labels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.get_shipment_labels ...'
      end
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !['ASC', 'DESC'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = '/vendor/shipping/v1/transportLabels'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'labelCreatedAfter'] = opts[:'label_created_after'] if !opts[:'label_created_after'].nil?
      query_params[:'labelcreatedBefore'] = opts[:'labelcreated_before'] if !opts[:'labelcreated_before'].nil?
      query_params[:'buyerReferenceNumber'] = opts[:'buyer_reference_number'] if !opts[:'buyer_reference_number'].nil?
      query_params[:'vendorShipmentIdentifier'] = opts[:'vendor_shipment_identifier'] if !opts[:'vendor_shipment_identifier'].nil?
      query_params[:'sellerWarehouseCode'] = opts[:'seller_warehouse_code'] if !opts[:'seller_warehouse_code'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetShipmentLabels' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#get_shipment_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [SubmitShipmentConfirmationsResponse]
    def submit_shipment_confirmations(body, opts = {})
      data, _status_code, _headers = submit_shipment_confirmations_with_http_info(body, opts)
      data
    end

    # Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubmitShipmentConfirmationsResponse, Integer, Hash)>] SubmitShipmentConfirmationsResponse data, response status code and response headers
    def submit_shipment_confirmations_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.submit_shipment_confirmations ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling VendorShippingApi.submit_shipment_confirmations"
      end
      # resource path
      local_var_path = '/vendor/shipping/v1/shipmentConfirmations'

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

      return_type = opts[:return_type] || 'SubmitShipmentConfirmationsResponse' 

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
    # Submits one or more shipment request for vendor Orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [SubmitShipmentConfirmationsResponse]
    def submit_shipments(body, opts = {})
      data, _status_code, _headers = submit_shipments_with_http_info(body, opts)
      data
    end

    # Submits one or more shipment request for vendor Orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubmitShipmentConfirmationsResponse, Integer, Hash)>] SubmitShipmentConfirmationsResponse data, response status code and response headers
    def submit_shipments_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorShippingApi.submit_shipments ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling VendorShippingApi.submit_shipments"
      end
      # resource path
      local_var_path = '/vendor/shipping/v1/shipments'

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

      return_type = opts[:return_type] || 'SubmitShipmentConfirmationsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorShippingApi#submit_shipments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
