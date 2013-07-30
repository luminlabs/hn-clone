class CommentsController < ApplicationController

	def create
		@link = Link.find(params[:id])
		@comment = @link.comments.build(params[:comment])
		redirect_to links_path
	end

end