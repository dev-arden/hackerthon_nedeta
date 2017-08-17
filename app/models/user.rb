class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :deta_posts
  has_many :likes
  has_many :liked_deta_posts, through: :likes, source: :post
  
  def is_like?(deta_post)
    Like.find_by(user_id: self.id, post_id: post.id).present?
  end
end
