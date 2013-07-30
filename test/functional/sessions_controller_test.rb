require 'test_helper'

class SessionsControllerTest < ActionController::TestCase 
	test "should be able to mass-assign to password" do
		assert User.new(password: "secret")
	end

	test "should not be able to mass assign to password-hash" do
		assert_raises ActiveModel::MassAssignmentSecurity::Error do
			User.new(password_hash: "secret")
		end
	end

	test "Get to new renders the new session form" do
		get :new
		assert_template :new
	end

	test "Post to create redirect redirects to the root if the email and password match" do
		# User.create(email: "foo@bar.com"
	end



end
