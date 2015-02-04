class PostsController < ApplicationController
	def new
		@post = POST.new
	end

	def create
		post = POST.new
		post.title = params[:title]
		post.description = params[:description]
		post.save
	end

	def show
	end

	def edit
	end

	def update
	end
end
