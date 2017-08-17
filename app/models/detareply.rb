class Detareply < ActiveRecord::Base
    belongs_to :user
    belongs_to :deta_post
end
