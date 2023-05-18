=begin
#Selling Partner API for Solicitations

#With the Solicitations API you can build applications that send non-critical solicitations to buyers. You can get a list of solicitation types that are available for an order that you specify, then call an operation that sends a solicitation to the buyer for that order. Buyers cannot respond to solicitations sent by this API, and these solicitations do not appear in the Messaging section of Seller Central or in the recipient's Message Center. The Solicitations API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

module AmzSpApi::SolicitationsApiModel
  class SolicitationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Sends a solicitation to a buyer asking for seller feedback and a product review for the specified order. Send only one productReviewAndSellerFeedback or free form proactive message per order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param amazon_order_id An Amazon order identifier. This specifies the order for which a solicitation is sent.
    # @param marketplace_ids A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.
    # @param [Hash] opts the optional parameters
    # @return [CreateProductReviewAndSellerFeedbackSolicitationResponse]
    def create_product_review_and_seller_feedback_solicitation(amazon_order_id, marketplace_ids, opts = {})
      data, _status_code, _headers = create_product_review_and_seller_feedback_solicitation_with_http_info(amazon_order_id, marketplace_ids, opts)
      data
    end

    # Sends a solicitation to a buyer asking for seller feedback and a product review for the specified order. Send only one productReviewAndSellerFeedback or free form proactive message per order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param amazon_order_id An Amazon order identifier. This specifies the order for which a solicitation is sent.
    # @param marketplace_ids A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateProductReviewAndSellerFeedbackSolicitationResponse, Integer, Hash)>] CreateProductReviewAndSellerFeedbackSolicitationResponse data, response status code and response headers
    def create_product_review_and_seller_feedback_solicitation_with_http_info(amazon_order_id, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SolicitationsApi.create_product_review_and_seller_feedback_solicitation ...'
      end
      # verify the required parameter 'amazon_order_id' is set
      if @api_client.config.client_side_validation && amazon_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'amazon_order_id' when calling SolicitationsApi.create_product_review_and_seller_feedback_solicitation"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling SolicitationsApi.create_product_review_and_seller_feedback_solicitation"
      end
      # resource path
      local_var_path = '/solicitations/v1/orders/{amazonOrderId}/solicitations/productReviewAndSellerFeedback'.sub('{' + 'amazonOrderId' + '}', amazon_order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CreateProductReviewAndSellerFeedbackSolicitationResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SolicitationsApi#create_product_review_and_seller_feedback_solicitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of solicitation types that are available for an order that you specify. A solicitation type is represented by an actions object, which contains a path and query parameter(s). You can use the path and parameter(s) to call an operation that sends a solicitation. Currently only the productReviewAndSellerFeedbackSolicitation solicitation type is available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param amazon_order_id An Amazon order identifier. This specifies the order for which you want a list of available solicitation types.
    # @param marketplace_ids A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.
    # @param [Hash] opts the optional parameters
    # @return [GetSolicitationActionsForOrderResponse]
    def get_solicitation_actions_for_order(amazon_order_id, marketplace_ids, opts = {})
      data, _status_code, _headers = get_solicitation_actions_for_order_with_http_info(amazon_order_id, marketplace_ids, opts)
      data
    end

    # Returns a list of solicitation types that are available for an order that you specify. A solicitation type is represented by an actions object, which contains a path and query parameter(s). You can use the path and parameter(s) to call an operation that sends a solicitation. Currently only the productReviewAndSellerFeedbackSolicitation solicitation type is available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param amazon_order_id An Amazon order identifier. This specifies the order for which you want a list of available solicitation types.
    # @param marketplace_ids A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSolicitationActionsForOrderResponse, Integer, Hash)>] GetSolicitationActionsForOrderResponse data, response status code and response headers
    def get_solicitation_actions_for_order_with_http_info(amazon_order_id, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SolicitationsApi.get_solicitation_actions_for_order ...'
      end
      # verify the required parameter 'amazon_order_id' is set
      if @api_client.config.client_side_validation && amazon_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'amazon_order_id' when calling SolicitationsApi.get_solicitation_actions_for_order"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling SolicitationsApi.get_solicitation_actions_for_order"
      end
      # resource path
      local_var_path = '/solicitations/v1/orders/{amazonOrderId}'.sub('{' + 'amazonOrderId' + '}', amazon_order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetSolicitationActionsForOrderResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SolicitationsApi#get_solicitation_actions_for_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
