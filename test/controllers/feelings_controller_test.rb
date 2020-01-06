require 'test_helper'

class FeelingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get feelings_new_url
    assert_response :success
  end

  test "should get create" do
    get feelings_create_url
    assert_response :success
  end

end
