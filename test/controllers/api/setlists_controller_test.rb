require 'test_helper'

class Api::SetlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_setlists_show_url
    assert_response :success
  end

  test "should get index" do
    get api_setlists_index_url
    assert_response :success
  end

  test "should get new" do
    get api_setlists_new_url
    assert_response :success
  end

  test "should get create" do
    get api_setlists_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_setlists_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get api_setlists_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_setlists_update_url
    assert_response :success
  end

end
