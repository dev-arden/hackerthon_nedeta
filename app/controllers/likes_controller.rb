class LikesController < ApplicationController
    
    def like_toggle
        like = Like.find_by(user_id: current_user.id, deta_post_id: params[:post_id])
        
    if like.nil?
        Like.create(user_id: current_user.id, deta_post_id: params[:post_id])
    else
        like.destroy
    end
    
    redirect_to :back
    
    end
    
  def show
    @post = DetaPost.all.order("created_at DESC")
    if params[:search]
      @post = DetaPost.search(params[:search]).order("created_at DESC")
    else
      @post = DetaPost.all.order("created_at DESC")
    end
    
     @all_posts = DetaPost.all
  end


end
