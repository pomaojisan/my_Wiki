require 'wikipedia'

Wikipedia.Configure {
  domain 'ja.wikipedia.org'
  path   'w/api.php'
}

class PostsController < ApplicationController
  def show
    render:new
  end
  def create
    page = Wikipedia.find( params[:search] )
    @serch_Text = page.text
    render:new
  end

end
