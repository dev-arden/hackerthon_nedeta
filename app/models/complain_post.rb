class ComplainPost < ActiveRecord::Base
    has_many :ComplainReplies
end
