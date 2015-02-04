class SecretsController < ApplicationController
	def new
		@secret = Secret.new
	end

	def create
		secret = Secret.new
		secret.title = params[:title]
		secret.description = params[:description]
		secret.save
		id = secret.id
		redirect_to secret_path(:id => id)
	end

	def show
		@secret = Secret.friendly.find(params[:id])
		@comments = @secret.comments
		@comments_count = @comments.count
	end

	def edit
	end

	def update
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
