require 'test_helper'

class EnglishPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get managing" do
    get english_pages_managing_url
    assert_response :success
  end

  test "should get marketing" do
    get english_pages_marketing_url
    assert_response :success
  end

  test "should get branding" do
    get english_pages_branding_url
    assert_response :success
  end

  test "should get contact" do
    get english_pages_contact_url
    assert_response :success
  end

  test "should get accueil" do
    get english_pages_accueil_url
    assert_response :success
  end

end
