class TopicsController < ApplicationController
  
  def new
    @topic = Topic.new
  end

  def create
      content = params[:topic][:content]
      @topic = current_user.topics.create(content: content)
      if @topic.save
        flash[:success] = "create topic success."
        redirect_to root_path
      else
        render "new"
      end
  end

  def show
  end
end
