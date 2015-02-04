class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end
	def create
		comment = Comment.new
		comment.secret_id = params[:secret_id]
		comment.comment = params[:comment]
		comment.created_at = DateTime.now
		comment.save
		redirect_to secret_path(:id => params[:secret_id])
	end
	def delete
	end
end
