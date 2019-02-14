class MessagesController < ApplicationController

  def create
    @message = Message.create(message_params)
    redirect_to chat_path(@message.chat.id)
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :tomodachi_id, :chat_id, :content, :valentime)
  end

end
