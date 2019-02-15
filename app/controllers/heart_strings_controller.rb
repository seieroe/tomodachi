class HeartStringsController < ApplicationController

  def new
    @heart_string = HeartString.new
  end

  def create
    @heart_string = HeartString.new(heart_string_params)
    if @heart_string.valid?
      @heart_string.save
      redirect_to heart_string_path(@heart_string)
    else
      flash[:errors] = @heart_string.errors.full_messages
      render :new
    end
  end

  def show

    @heart_string = HeartString.find(params[:id])
    @photo = Photo.new(heart_string: @heart_string)

  end

  def chat
    @heart_string = HeartString.find(params[:heart_string_id])
    @chat = Chat.create!(heart_string: @heart_string)
    redirect_to chat_path(@chat)
  end

  private

  def heart_string_params
    params.require(:heart_string).permit(:user_id, :tomodachi_id)
  end
end
