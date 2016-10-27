class SquadsController < ApplicationController
  def create
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