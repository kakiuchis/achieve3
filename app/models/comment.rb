class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :notifications
  validates :content, presence: true
  
  after_create do
  #   unless @comment.blog.user_id == current_user.id
  #     Pusher.trigger("user_#{@comment.blog.user_id}_channel", 'comment_created', {
  #       message: 'あなたの作成したブログにコメントが付きました'
  #     })
  #     Pusher.trigger("user_#{@comment.blog.user_id}_channel", 'notification_created', {
  #       uncreate_count: Notification.where(user_id: @comment.blog.user.id).count
  #     })
  #   end
  end
end
