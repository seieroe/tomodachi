class MessagesController < ApplicationController

  def create
    @message = Message.create(message_params)
  end


end
