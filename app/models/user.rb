class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :deta_posts
  has_many :deta_replies
  has_many :likes
  has_many :liked_deta_posts, through: :likes, source: :deta_post
  
  def is_like?(post)
    Like.find_by(user_id: self.id, deta_post_id: post.id).present?
  end
end
