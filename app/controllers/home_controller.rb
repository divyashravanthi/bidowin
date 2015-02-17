class HomeController < ApplicationController
  def index
  	@secrets = Secret.all.includes(:comments)
  end
end