require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that feed route opens all statuses page" do
		get "/feed"
		assert_response :success
	end

	test "that login route opens login page" do
		get "/login"
		assert_response :success
	end

	test "that register route opens sign up page" do
		get "/register"
		assert_response :success
	end
	
	test "that logout route redirects to root page" do
		get "/logout"
		assert_response :redirect
		assert_redirected_to root_path
	end


end
