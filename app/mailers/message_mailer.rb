class MessageMailer < ApplicationMailer
  require 'mailgun'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact.subject
  #
  def contact(message)
    @body = message.body

    mail to: "trandgthanh@gmail.com", from: message.email

    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    message_params = {:from => message.email,
                      :to => ENV['email'],
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message ENV['mailgun_domain'], message_params
  end
end
