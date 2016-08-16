module TasksHelper
    def status_display_name(status)
        case status
          when 0
            '未着手'
          when 1
            '対応中'
        end
    end

  def done_display_name(done)
    done ? '完了' : '未完了'
  end
end
