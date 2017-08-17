class DetaController < ApplicationController
  def deta_index
  end
  def deta_write
    @post = DetaPost.new

    @post = DetaPost.create(:type => params[:type], :local => params[:local], :money => params[:money], :title => params[:title], :content => params[:content], :date => params[:date], :time => params[:starttime], :time2 => params[:finishtime], :work => params[:work], :user_id => params[:user_id])

    @post.save
    
    redirect_to '/deta_list'
  end
  def deta_list
    @post = DetaPost.all.order("created_at DESC")
    if params[:search]
      @post = DetaPost.search(params[:search]).order("created_at DESC")
    else
      @post = DetaPost.all.order("created_at DESC")
    end
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
    @post.type = params[:type]
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
  def detareply_write
    @detareply = Detareply.new
    @detareply.user_id = params[:user]
    @detareply.content = params[:detacontent]
    @detareply.deta_post_id = params[:post_id]
    @detareply.save
    
    redirect_to :back 
  end
  def detareply_destroy
    @detareply = Detareply.find(params[:id])
    @detareply.destroy
    
    redirect_to :back
  end
  def detareply_accept
    @detareply = Detareply.find(params[:id])
    
    redirect_to :back
  end
end