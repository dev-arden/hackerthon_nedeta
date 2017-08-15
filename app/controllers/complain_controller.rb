class ComplainController < ApplicationController
  def write
    @post = ComplainPost.new
    @post.complain_title = params[:title]
    @post.complain_content = params[:content]
    @post.save
    
    redirect_to "/complain/list"
  end

  def list
    @posts = ComplainPost.all
  end

  def edit
    number = params[:id]
    @one_post = ComplainPost.all.find_by_id(number)
  end

  def show
    number = params[:id]
    @one_post = ComplainPost.all.find_by_id(number)
  end

  def index
  end
  
  def destroy
    number = params[:id]
    @one_post = ComplainPost.all.find_by_id(number)
    @one_post.destroy
    
    redirect_to '/complain/list'
  end
  
  def reply_write
    reply = ComplainReply.new
    reply.content = params[:content]
    reply.complain_post_id = params[:id_of_post]
    reply.save
    
    redirect_to :back
  end


end
