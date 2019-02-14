class HeartStringsController < ApplicationController

  def new
    @heart_string = HeartString.new
  end

  def create
    @heart_string = HeartString.new(user: current_user, tomodachi_id: heart_string_params[:tomodachi_id])

    # @heart_string = HeartString.new(heart_string_params)
    if @heart_string.save
      redirect_to heart_string_path(@heart_string)
    else
      render :new
    end
  end

  def show
    @heart_string = HeartString.find(params[:id])
    @photo = Photo.new(heart_string: @heart_string)

  end

  def chat
    # binding.pry
    @heart_string = HeartString.find(params[:heart_string_id])
    @chat = Chat.create!(heart_string: @heart_string)

    # UserChat.create!(user: @heart_string.user, chat: @chat)
    # UserChat.create!(user: @heart_string.tomodachi, chat: @chat)

    redirect_to chat_path(@chat)
  end



  private

  def heart_string_params
    params.require(:heart_string).permit(:user_id, :tomodachi_id)
  end
end
