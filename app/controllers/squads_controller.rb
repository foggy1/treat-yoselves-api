class SquadsController < ApplicationController
  def create
    @squad = Squad.new(relevant_params)
    if @squad.save
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