class HomeController < ApplicationController
  def index
  	@search = Secret.search(params[:q])
  	if params[:hash].present?
  		@hashtag = SimpleHashtag::Hashtag.find_by_name(params[:hash])
    	@secrets = @hashtag.hashtaggables if @hashtag
  	else
  		@secrets = @search.result
  	end
  	@secrets = @secrets.sort_by {|obj| obj.created_at}
  end
end