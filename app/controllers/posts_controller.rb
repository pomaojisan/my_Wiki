class PostsController < ApplicationController
  def show
    render:new
  end
  def create
    @serch_Text = params[:search]
    render:new
  end

end
