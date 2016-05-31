class UsersController < ApplicationController

  def new
    @user = User.new
  end

def create
  @user = User.new(user_params)
    if @user.save
      UserMailer.test_email(@user.email).deliver_later
      redirect_to @user, notice: 'User successfully created.'
    else
      flash.now[:alert] = 'User was not created.'
      render :new
    end
  end
end

  private
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :password_confirmation
      )
    end
end
