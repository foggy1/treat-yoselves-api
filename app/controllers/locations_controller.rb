class LocationsController < ApplicationController
  def create
    @location = Location.new(relevant_params)
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