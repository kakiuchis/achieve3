class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user
  
  validates_presence_of :body, :conversation_id, :user_id
  def message_time
    created_at.strftime("%Y/%m/%d %p %l:%M")
  end
end
