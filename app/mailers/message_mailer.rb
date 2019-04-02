class MessageMailer < ApplicationMailer
  require 'mailgun-ruby'

  def contact(message)
    @body = message.body

    mail to: "trandgthanh@gmail.com", from: message.email

    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
    message_params = {:from => message.email,
                      :to => ENV['email'],
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end
end
