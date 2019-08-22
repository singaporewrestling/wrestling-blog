require 'test_helper'

class ClientTrustedDomainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_trusted_domain = client_trusted_domains(:one)
  end

  test "should get index" do
    get client_trusted_domains_url, as: :json
    assert_response :success
  end

  test "should create client_trusted_domain" do
    assert_difference('ClientTrustedDomain.count') do
      post client_trusted_domains_url, params: { client_trusted_domain: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show client_trusted_domain" do
    get client_trusted_domain_url(@client_trusted_domain), as: :json
    assert_response :success
  end

  test "should update client_trusted_domain" do
    patch client_trusted_domain_url(@client_trusted_domain), params: { client_trusted_domain: {  } }, as: :json
    assert_response 200
  end

  test "should destroy client_trusted_domain" do
    assert_difference('ClientTrustedDomain.count', -1) do
      delete client_trusted_domain_url(@client_trusted_domain), as: :json
    end

    assert_response 204
  end
end
