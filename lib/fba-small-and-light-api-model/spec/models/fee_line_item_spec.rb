=begin
#Selling Partner API for FBA Small And Light

#The Selling Partner API for FBA Small and Light lets you help sellers manage their listings in the Small and Light program. The program reduces the cost of fulfilling orders for small and lightweight FBA inventory. You can enroll or remove items from the program and check item eligibility and enrollment status. You can also preview the estimated program fees charged to a seller for items sold while enrolled in the program.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FbaSmallAndLightApiModel::FeeLineItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeeLineItem' do
  before do
    # run before each test
    @instance = AmzSpApi::FbaSmallAndLightApiModel::FeeLineItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeeLineItem' do
    it 'should create an instance of FeeLineItem' do
      expect(@instance).to be_instance_of(AmzSpApi::FbaSmallAndLightApiModel::FeeLineItem)
    end
  end
  describe 'test attribute "fee_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FBAWeightBasedFee", "FBAPerOrderFulfillmentFee", "FBAPerUnitFulfillmentFee", "Commission"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.fee_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "fee_charge"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
