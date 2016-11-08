require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  class UsersLoginTest < ActionDispatch::IntegrationTest
    test "login with invalid information" do
      get login_path
      assert_template 'sessions/new'
      post login_path, params: {session: {email: "", password: ""}}
      assert_template 'session/new'
      assert_not flash.empty?
      get root_path
      assert flash.empty?
    end
end
