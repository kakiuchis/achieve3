module SubmitRequestsHelper
  def request_status_display_name(status)
    case status
      when 1
        '未承認'
      when 2
        '承認済'
      when 9
        '却下'
      else
        '???'
    end
  end

  def done_display_name(done)
    done ? '完了' : '未完了'
  end
end
