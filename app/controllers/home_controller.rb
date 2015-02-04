class HomeController < ApplicationController
  def index
  	@secrets = Secret.all.includes(:comments)
  end
end
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
	def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.datetime :created_at
      t.boolean :approved
      t.timestamps null: false
    end
  end