require 'wikipedia'

Wikipedia.Configure {
  domain 'ja.wikipedia.org'
  path   'w/api.php'
}

class PostsController < ApplicationController
  def new
    render:new
  end
  def create
    page = Wikipedia.find( params[:search] )
    @serch_url = page.fullurl
    @serch_image_urls = page.main_image_url
    #render:new
  end

end
