class ChatsController < ApplicationController

  def show
    @chat = Chat.find(params[:id])
      if @chat.messages.last.try(:content)
          @chat.messages.build
      end
  end

  def message
    @message = Message.create(params[chat_id: @chat.id, content: @message.content])
  end



  def update
    chat = Chat.find(params[:id])
    chat.update(chat_params)
    redirect_to chat
  end


  private

  def chat_params
    params.require(:chat).permit(:heart_string_id, messages_attributes: [:user_id, :tomodachi_id, :chat_id, :content, :valentime])
  end

end
