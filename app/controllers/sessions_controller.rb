class SessionsController < ApplicationController 

	def new 
	end

	def create
		user = User.find_by_email(params[:user][:email])

	end

end