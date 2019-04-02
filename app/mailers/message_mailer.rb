class MessageMailer < ApplicationMailer
  require 'mailgun-ruby'

  def contact(message)
    @body = message.body

    # mail to: "trandgthanh@gmail.com", from: message.email

    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
    message_params = {:from => message.email,
                      :to => 'trandgthanh@gmail.com',
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message 'sandbox73e99d98c1b54f47b9e077a8ee7f93f8.mailgun.org', message_params
  end
end
