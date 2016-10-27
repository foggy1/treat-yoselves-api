class LocationsController < ApplicationController
  def create
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