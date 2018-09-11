class TopicsController < ApplicationController
  respond_to :html, :js

  def like
    @topic = Topic.find(params[:id])
    @topic.improve_like
  end

  def remove_like
    @topic = Topic.find(params[:id])
    @topic.remove_like

    render :remove_like
  end

  def dislike
    @topic = Topic.find(params[:id])
    @topic.improve_dislike
  end

  def remove_dislike
    @topic = Topic.find(params[:id])
    @topic.remove_dislike

    render :remove_dislike
  end
end
