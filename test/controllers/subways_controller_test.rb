require 'test_helper'

class SubwaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subways_index_url
    assert_response :success
  end

  test "should get create" do
    get subways_create_url
    assert_response :success
  end

end
