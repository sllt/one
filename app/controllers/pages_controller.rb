class PagesController < ApplicationController
  def index
    @topics = Topic.all
  end

  def download
  end

  def about 
  end
end
