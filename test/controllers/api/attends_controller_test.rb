require 'test_helper'

class Api::AttendsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_attends_create_url
    assert_response :success
  end

end
