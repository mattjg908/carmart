class SessionController < ApplicationController
  def new
  end
  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user_id
      @auth = User.find(session[:user_id]) if session[:user_id].present?
      redirect_to(users_path)
    else
      session[:user_id] = nil
      redirect_to(root_path)
    end
  end

  def destroy
    session[:user_id] = nil
    @auth = nil
  end
end
