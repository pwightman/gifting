class AuthenticationsController < ApplicationController
  def create
    @user = User.with_omniauth(env["omniauth.auth"])
    @user.name = env["omniauth.auth"]["info"]["name"]
    @user.image_url = env["omniauth.auth"]["info"]["image"]
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
