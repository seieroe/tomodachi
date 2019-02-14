class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      end
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    # @user = User.find(params[:id])
  end



  private

  #strong params
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
