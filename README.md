# amz_sp_api

AmzSpApi - Unofficial Ruby gem for the Amazon Selling Partner API (SP-API)

This SDK is automatically generated by running [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) on each model from https://github.com/amzn/selling-partner-api-models using the [codegen.sh](codegen.sh) script.

Auto-generated documentation is nested here, but the references in https://github.com/amzn/selling-partner-api-docs are more comprehensive.

## Installation

Add the gem to your Gemfile as per https://rubygems.org/gems/amz_sp_api

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code, see [sp_configuration.rb](lib/sp_configuration.rb) for all options:
```ruby
# Load the gem and specific api model you'd like to use

require 'amz_sp_api'
require 'fulfillment-outbound-api-model'

AmzSpApi.configure do |config|
  config.refresh_token =
  config.client_id =
  config.client_secret =

  # either use these:
  config.aws_access_key_id =
  config.aws_secret_access_key =

  # OR config.credentials_provider which is passed along to https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/Sigv4/Signer.html, e.g.
  # require 'aws-sdk-core'
  # config.credentials_provider = Aws::STS::Client.new(
  #     region: AmzSpApi::SpConfiguration::AWS_REGION_MAP['eu'],
  #     access_key_id: ,
  #     secret_access_key:
  #   ).assume_role(role_arn: , role_session_name: SecureRandom.uuid)

  config.region = 'eu'
  config.timeout = 20 # seconds
  # config.debugging = true

  # optional lambdas for caching LWA access token instead of requesting it each time, e.g.:
  config.save_access_token = -> (access_token_key, token) do
    Rails.cache.write("SPAPI-TOKEN-#{access_token_key}", token[:access_token], expires_in: token[:expires_in] - 60)
  end
  config.get_access_token = -> (access_token_key) { Rails.cache.read("SPAPI-TOKEN-#{access_token_key}") }
end

begin
  api = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new(AmzSpApi::SpApiClient.new)
  p api.list_all_fulfillment_orders.payload
rescue AmzSpApi::ApiError => e
  puts "Exception when calling SP-API: #{e}"
end
```

## Documentation

This is a handy way to see all the API model class names and corresponding files you need to require for them, e.g. require 'finances-api-model' to use https://www.rubydoc.info/gems/amz_sp_api/AmzSpApi/FinancesApiModel/DefaultApi

## Feeds and reports

This gem also offers encrypt/decrypt helper methods for feeds and reports, but actually using that API as per https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/use-case-guides/feeds-api-use-case-guide requires the following calls, e.g. for feeds but reports is the same pattern:

```ruby
feeds = AmzSpApi::FeedsApiModel::FeedsApi.new(AmzSpApi::SpApiClient.new)
response = feeds.create_feed_document({"contentType" => content_type})
feed_document_id = response&.payload&.dig(:feedDocumentId)
url = response.payload[:url]
encrypted = AmzSpApi.encrypt_feed(feed_content, response.payload)
# PUT to url with lowercase "content-type" header, it's already pre-signed
response = feeds.create_feed({"feedType" => feed_type, "marketplaceIds" => marketplace_ids, "inputFeedDocumentId" => feed_document_id})
feed_id = response&.payload&.dig(:feedId)
response = feeds.get_feed(feed_id)
result_feed_document_id = response&.payload&.dig(:resultFeedDocumentId) # present once it is successful
response = feeds.get_feed_document(result_feed_document_id)
url = response&.payload&.dig(:url)
# GET response&.payload&.dig(:url) into ciphertext, again it's pre-signed so no authorization needed
AmzSpApi.decrypt_and_inflate_document(ciphertext, response.payload)
```

## Thanks

to https://github.com/patterninc/muffin_man as the basis for [sp_api_client.rb](lib/sp_api_client.rb)
