=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools. The Orders API only supports orders that are less than two years old. Orders more than two years old will not show in the API response.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::OrdersApiModel::PromotionIdList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PromotionIdList' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::PromotionIdList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PromotionIdList' do
    it 'should create an instance of PromotionIdList' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::PromotionIdList)
    end
  end
end
