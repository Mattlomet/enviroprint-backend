require 'test_helper'

class TrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trains_index_url
    assert_response :success
  end

  test "should get create" do
    get trains_create_url
    assert_response :success
  end

end
