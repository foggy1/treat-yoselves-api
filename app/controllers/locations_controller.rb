class LocationsController < ApplicationController
  def create
    if !logged_in?
      @errors = "You must be logged in!"
      render json: @errors.as_json
    end
    @user = current_user
    @squad = @user.squad
    @location = Location.new(relevant_params)
    @squad.locations << @location
    if @location.save
      render json: @location.as_json
    else
      @errors = @location.errors.full_messages
      render json: @errors.as_json
    end
  end

  def update
  end

  def destroy
  end

  private
  def relevant_params
    params.require(:location).permit(:latitude, :longitude)
  end
end