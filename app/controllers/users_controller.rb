class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Success!"
      redirect_to :root
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end

  end


private
  def user_params
    params.require(:user).permit(
    :email, :password, :password_confirmation
    )
  end
end