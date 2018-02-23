class RepliesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_topic, only: [:create, :edit, :show, :update, :destroy]
  before_action :set_reply, only: [:edit, :update, :show, :destroy]



  def index
    @replies = Reply.all    
  end

  def create
    @reply = @topic.replies.create(reply_params)
    @reply.user_id = current_user.id

    respond_to do |format|
      if @reply.save    
        format.html { redirect_to topic_path(@topic)}
        format.js
      else
        format.html { redirect_to topic_path(@topic), notice: "Reply don't sace" }
        format.js
      end
    end
  end

  def new
  end


  def destroy
    @reply = @topic.replies.find(params[:id])
    @reply.destroy
    redirect_to topic_path(@topic)
  end


  private

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def set_reply
    @reply = Reply.find(params[:id])
  end

  def reply_params
    params.require(:reply).permit(:reply)
  end

end