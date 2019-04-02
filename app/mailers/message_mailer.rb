class MessageMailer < ApplicationMailer
  require 'mailgun-ruby'

  def contact(message)
    @body = message.body

    mail to: "trandgthanh@gmail.com", from: message.email

    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
    message_params = {:from => message.email,
                      :to => "trandgthanh@gmail.com",
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message "thanhtran.herokuapp.com", message_params
  end
end
