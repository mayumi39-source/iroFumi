require "test_helper"

class ColorEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get color_entries_index_url
    assert_response :success
  end

  test "should get new" do
    get color_entries_new_url
    assert_response :success
  end

  test "should get create" do
    get color_entries_create_url
    assert_response :success
  end

  test "should get edit" do
    get color_entries_edit_url
    assert_response :success
  end

  test "should get update" do
    get color_entries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get color_entries_destroy_url
    assert_response :success
  end
end
