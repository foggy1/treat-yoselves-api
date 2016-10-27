class UsersController < ApplicationController
  def create
  end

  def update
  end

  def destroy
  end

  private
  def relevant_params
    params.require(:user).permit(:email, :username, :password)
  end
end