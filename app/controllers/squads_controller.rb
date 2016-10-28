class SquadsController < ApplicationController
  def create
    if !logged_in
      @errors = "You must be logged in!"
      render json: @errors.as_json
    end
    @user = current_user
    @squad = Squad.new(relevant_params)
    if @squad.save
      @squad.users << @user
      render json: @squad.as_json
    else
      @errors = @squad.errors.full_messages
      render json: @errors.as_json
    end
  end

  def update
  end

  def destroy
  end

  private
  def relevant_params
    params.require(:squad).permit(:name)
  end
end