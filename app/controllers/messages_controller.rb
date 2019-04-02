class MessagesController < ApplicationController
  def new
    @message = Message.new

  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to contact_path
      flash[:notice] = "Thanks for your message & I'll be in touch soon!"
    else
      flash[:notice] = "There was an error sending your message. Please try again."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :body)
  end
end
