class Spammer < ActionMailer::Base
  #default from: "example@example.fi", :return_path => "example@example.fi"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.spammer.send_email.subject
  #
  def send_email(message = "message", subject="subject", to_e="example@example.fi", from_e="example@example.fi")
    @message = message
    mail :to => to_e, :from => from_e, :subject => subject #do |format|
#      format.html
#   end
 
    puts mail
  end
  
  def spam_with_attachment
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
