=begin
#Selling Partner API for Feeds

#The Selling Partner API for Feeds lets you upload data to Amazon on behalf of a selling partner.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::FeedsApiModel::FeedsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeedsApi' do
  before do
    # run before each test
    @instance = AmzSpApi::FeedsApiModel::FeedsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeedsApi' do
    it 'should create an instance of FeedsApi' do
      expect(@instance).to be_instance_of(AmzSpApi::FeedsApiModel::FeedsApi)
    end
  end

  # unit tests for cancel_feed
  # Cancels the feed that you specify. Only feeds with processingStatus&#x3D;IN_QUEUE can be cancelled. Cancelled feeds are returned in subsequent calls to the getFeed and getFeeds operations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param feed_id The identifier for the feed. This identifier is unique only in combination with a seller ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_feed test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_feed
  # Creates a feed. Upload the contents of the feed document before calling this operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0083 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [CreateFeedResponse]
  describe 'create_feed test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_feed_document
  # Creates a feed document for the feed type that you specify. This operation returns a presigned URL for uploading the feed document contents. It also returns a feedDocumentId value that you can pass in with a subsequent call to the createFeed operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0083 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [CreateFeedDocumentResponse]
  describe 'create_feed_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feed
  # Returns feed details (including the resultDocumentId, if available) for the feed that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2.0 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param feed_id The identifier for the feed. This identifier is unique only in combination with a seller ID.
  # @param [Hash] opts the optional parameters
  # @return [Feed]
  describe 'get_feed test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feed_document
  # Returns the information required for retrieving a feed document&#x27;s contents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param feed_document_id The identifier of the feed document.
  # @param [Hash] opts the optional parameters
  # @return [FeedDocument]
  describe 'get_feed_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feeds
  # Returns feed details for the feeds that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :feed_types A list of feed types used to filter feeds. When feedTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either feedTypes or nextToken is required.
  # @option opts [Array<String>] :marketplace_ids A list of marketplace identifiers used to filter feeds. The feeds returned will match at least one of the marketplaces that you specify.
  # @option opts [Integer] :page_size The maximum number of feeds to return in a single call.
  # @option opts [Array<String>] :processing_statuses A list of processing statuses used to filter feeds.
  # @option opts [DateTime] :created_since The earliest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is 90 days ago. Feeds are retained for a maximum of 90 days.
  # @option opts [DateTime] :created_until The latest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is now.
  # @option opts [String] :next_token A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getFeeds operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail.
  # @return [GetFeedsResponse]
  describe 'get_feeds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
