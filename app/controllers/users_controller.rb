class UsersController < ApplicationController
  def splash
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create(params[:user])
  end
  def index
  end

end