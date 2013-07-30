class VotesController < ApplicationController

	def create
		@vote = Vote.new(params[:vote])
		if @vote.save
			render :show
		else
			render :new
		end
	end

	def new 
		@vote = Vote.new
	end

	def destroy
		vote = Vote.find(params[:id])
		@vote.delete
		redirect_to votes_path
	end


end