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

# Unit tests for AmzSpApi::OrdersApiModel::BusinessHours
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BusinessHours' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::BusinessHours.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BusinessHours' do
    it 'should create an instance of BusinessHours' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::BusinessHours)
    end
  end
  describe 'test attribute "day_of_week"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.day_of_week = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "open_intervals"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
