class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog
    @greeting = "Hi"

    mail to: "kakiuchis@gmail.com",
      subject: "<<Achieve>> blog made"
  end
  
  def sendmail_contact(contact)
    @contact = contact

    mail to: "kakiuchis@gmail.com",
      subject: "<<Achieve>> contakt made"
  end
end
