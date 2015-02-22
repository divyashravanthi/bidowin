class SecretsController < ApplicationController

	def create
		secret = Secret.new
		secret.title = params[:title]
		secret.description = params[:description]
		secret.save
		id = secret.id
		redirect_to home_index_path
	end

	def show
		@secret = Secret.friendly.find(params[:id])
		@comments = @secret.comments
		@comments_count = @comments.count
		@search = Secret.search(params[:q])
	end

	# def add_like
	# 	if params[:type] == "secret"
	# 		secret = Secret.find(params[:id])
	# 		secret.likes += 1
	# 		secret.save
	# 	end
	# 	redirect_to root_path
	# end
end
