class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    if @photo.save!
      redirect_to heart_string_path(@photo.heart_string)
    else
      # flash[:errors] = @user.errors.full_messages
      redirect_to heart_string_path(@photo.heart_string)
    end
  end


  private
  def photo_params
    params.require(:photo).permit(:heart_string_id, :caption, :valentime, :photo)
  end
end
