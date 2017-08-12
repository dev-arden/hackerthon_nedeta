class HomeController < ApplicationController
  def main
  end
  def index
  end
  def write
    @post = Post.new
    @post = Post.create(:local => params[:local], :money => params[:money], :title => params[:title], :content => params[:content], :date => params[:date], :time => params[:starttime], :time2 => params[:finishtime])
    @post.save
    
    redirect_to '/list'
  end
  def show
    @post = Post.find(params[:post_id])
  end
  def list
    @post = Post.all
  end
  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy
    
    redirect_to '/list'
  end
  def edit
    @post = Post.find(params[:post_id])
  end
  def update
    @post = Post.find(params[:post_id])
    #@post = Post.create(:local => params[:local], :money => params[:money], :title => params[:title], :content => params[:content])
    @post.local = params[:local]
    @post.money = params[:money]
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to '/list'
  end
end
