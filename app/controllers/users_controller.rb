class UsersController < ApplicationController

  def signin
    @user = User.find_by(email: user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      render json: @user.as_json
    else
      @errors = ["Invalid email or password"]
      render json: @errors.as_json
    end
  end

  def logout
    session.clear
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: @user.as_json
    else
      @errors = @user.errors.full_messages
      render json: @errors.as_json
    end
  end

  def show
    require_user
    @user = current_user
    # render json probs
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
end