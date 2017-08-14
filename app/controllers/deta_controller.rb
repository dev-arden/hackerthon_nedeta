class DetaController < ApplicationController
  def deta_index
  end
  def deta_write
    @post = DetaPost.new
    @post = DetaPost.create(:local => params[:local], :money => params[:money], :title => params[:title], :content => params[:content], :date => params[:date], :time => params[:starttime], :time2 => params[:finishtime], :work => params[:work])
    @post.save
    
    redirect_to '/deta_list'
  end
  def deta_list
    @post = DetaPost.all.order("created_at DESC")
  end
  def deta_show
    @post = DetaPost.find(params[:post_id])
  end

  def deta_destroy
    @post = DetaPost.find(params[:post_id])
    @post.destroy
    
    redirect_to '/deta_list'
  end
  def deta_edit
    @post = DetaPost.find(params[:post_id])
  end
  def deta_update
    @post = DetaPost.find(params[:post_id])
    @post.local = params[:local]
    @post.money = params[:money]
    @post.title = params[:title]
    @post.content = params[:content]
    @post.date = params[:date]
    @post.work = params[:work]
    @post.time = params[:starttime]
    @post.time2 = params[:finishtime]
    @post.save
    
    redirect_to '/deta_list'
  end
end