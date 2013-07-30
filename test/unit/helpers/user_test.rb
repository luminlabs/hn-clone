require 'test_helper'

#assert 


class UserTest < ActiveSupport::TestCase
	test "setting the password sets the password hash" do 
		user = User.new
		user.password = "secret"
		assert user.password_hash, "password has was not true"
	end

	test "getting the password gets password from the password_hash " do
		hash = User::Password.create("secret")
		user = User.new
		user.password_hash = hash
		assert_equal user.password, "secret"
	end

	test "current_user should not hit the database multiple times" do
		
	end
end