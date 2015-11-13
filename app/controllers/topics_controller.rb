class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    render json: @topics, status: 200
  end

  def show
    @topic = Topic.find(params[:id])
    render json: @topic, status:200
  end

  private
    def topic_params
      params.require(:topic).permit(:name)
    end
end
