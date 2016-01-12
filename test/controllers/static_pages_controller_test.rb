require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  base = "| Ruby on Rails Tutorial Sample App"
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home #{base}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help #{base}"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About #{base}"
  end
end