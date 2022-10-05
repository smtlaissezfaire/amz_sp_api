=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ReportsApiModel::ReportOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportOptions' do
  before do
    # run before each test
    @instance = AmzSpApi::ReportsApiModel::ReportOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportOptions' do
    it 'should create an instance of ReportOptions' do
      expect(@instance).to be_instance_of(AmzSpApi::ReportsApiModel::ReportOptions)
    end
  end
end
