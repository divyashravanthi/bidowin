class HomeController < ApplicationController
  def index
  	@search = Secret.search(params[:q])
  	if params[:hash].present?
  		@hashtag = SimpleHashtag::Hashtag.find_by_name(params[:hash])
    	@secrets = @hashtag.hashtaggables if @hashtag
  	else
  		@secrets = @search.result
  		@secrets = @secrets.order(created_at: :desc)
  	end
  end

  def privacy_policy
    @search = Secret.search(params[:q])
  end

  def contact_us
    @search = Secret.search(params[:q])
  end

  def about_us
    @search = Secret.search(params[:q])
  end
end