class HomeController < ApplicationController
  def index
  	@search = Secret.search(params[:q])
  	@secrets = @search.result
  end
end