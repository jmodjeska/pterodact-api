
class PasswordResets < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    reset_url = password_reset_url + user.create_password_reset if user
    render json: reset_url, status: 200
  end

  def update
    user = User.find_by(password_reset_token: params[:id])
    if user.password_reset_sent_at < 2.hours.ago
      render json: 'Password token expired', status: 419
    else
      render json: (put authentication payload here)
  end
end
