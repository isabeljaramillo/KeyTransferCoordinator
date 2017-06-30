class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def create
    @user = User.new(params[:uid])
    if @user.save
      redirect_to @user, alert: "User created successfully."
    else
      redirect_to new_user_path, alert: "Error creating user."
  end
end

  def show
    @user = User.find(params[:uid])
  end
end
