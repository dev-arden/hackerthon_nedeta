class DetaPost < ActiveRecord::Base
  def self.search(search)
    where("type LIKE? or local LIKE ? or money LIKE ? or title LIKE ? or content LIKE ? or date LIKE ? or time LIKE ? or time2 LIKE ? or work LIKE ?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%") 
  end
  self.inheritance_column = nil
  
end
