class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			render :show
		else
			render :new
		end
	end

	def new 
		@link = Link.new
	end

	def edit
		@link = Link.find(params[:id])
		#redirect_to 
	end

	def destroy
		link = Link.find(params[:id])
		@link.delete
		redirect_to links_path
	end


end