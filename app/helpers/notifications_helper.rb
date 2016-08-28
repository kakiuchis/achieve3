module NotificationsHelper
  def posted_time(time)
    time > Date.today ? "#{time_ago_in_words(time)}" : time.strftime('%m月%d日')
  end
  
  def read_unread(read)
    case read
      when true
        '既読'
      when false
        '未読'
    end
  end
end
