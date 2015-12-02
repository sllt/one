require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "One"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "One | 关于"
  end

  test "should get download" do
    get :download
    assert_response :success
    assert_select "title", "One | 下载"
  end


end
