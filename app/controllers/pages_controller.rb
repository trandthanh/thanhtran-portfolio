class PagesController < ApplicationController
  def home
  end

  def about

  end

  def contact
    @message = Message.new

  end
end
