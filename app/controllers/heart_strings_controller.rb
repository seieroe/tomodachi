class HeartStringsController < ApplicationController

  def new
    @heart_string = HeartString.new
  end

  def create
    @heart_string = HeartString.new(heart_string_params)
    if @heart_string.save
      redirect_to heart_string_path(@heart_string)
    else
      render :new
    end
  end

  def show
    @heart_string = HeartString.find(params[:id])
  end

  def chat
    @chat = Chat.create
    @heart_string = HeartString.find(params[:id])

    UserChat.create(user: @heart_string.user, chat: @chat)
    UserChat.create(user: @heart_string.tomodachi, chat: @chat)

    redirect_to chat_path(@chat)
  end

  private

  def heart_string_params
    params.require(:heart_string).permit(:user_id, :tomodachi_id)
  end



end
