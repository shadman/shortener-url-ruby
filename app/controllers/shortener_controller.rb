class ShortenerController < ApplicationController

  def index

  	render :index
  end


  def generate

	shortener_url = ShortUrl.new
	
	response = shortener_url.create_short_url(params[:url])
	if response['id']
		id = response['id']
		#application->redirectToURL($application->getProjectPath()+'post/'+id);
		@url = shortener_url.create_link(response['short_url'])
	else 
		@msg = I18n.t("invalid")
	end

  	render :index
  end

  def access
  	short_url = params['short_url']
  	shortener_url = ShortUrl.new
  	data = shortener_url.short_url(short_url)
  	if data
  		redirect_to data['url']
	else 
		@msg = I18n.t("invalid")
		render :index
	end

  end

end