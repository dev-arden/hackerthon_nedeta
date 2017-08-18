class MypageController < ApplicationController
    
    def mynote
        @post = DetaPost.all
    end 
    
    def scrap
        
    end 
    
    def mbox
      session[:conversations] ||= []
  
      @users = User.all.where.not(id: current_user)
      @conversations = Conversation.includes(:recipient, :messages)
                                   .find(session[:conversations])
                                   
      #current_user가 포함된 모든 채널                           
      @my_channels = Conversation.where("recipient_id = ? OR sender_id = ?", current_user.id, current_user.id)
  
      #current_user가 실제로 채팅한 채널
      @my_real_channels = Array.new
      
      @my_channels.each do |conversation|
        conversation.messages.each do |message|
          if(message)
            @my_real_channels << conversation.id
          end
        end
      end
        
    end 
    
end
