=begin
#Selling Partner API for Authorization

#The Selling Partner API for Authorization helps developers manage authorizations and check the specific permissions associated with a given authorization.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.43
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::AuthorizationApiModel::AuthorizationCode
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthorizationCode' do
  before do
    # run before each test
    @instance = AmzSpApi::AuthorizationApiModel::AuthorizationCode.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthorizationCode' do
    it 'should create an instance of AuthorizationCode' do
      expect(@instance).to be_instance_of(AmzSpApi::AuthorizationApiModel::AuthorizationCode)
    end
  end
  describe 'test attribute "authorization_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
