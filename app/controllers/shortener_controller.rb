class ShortenerController < ApplicationController

  def index

  	@cool = 'Shadman'
  	
  	render :index
  end


  def generate

  	@cool = 'Test'
  	
  	render :index
  end


end