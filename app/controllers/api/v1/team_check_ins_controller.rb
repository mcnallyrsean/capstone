class Api::V1::TeamCheckInsController < ApplicationController

  def index
    @team_check_ins = TeamCheckIn.all
  end

   def create
    @team_check_in = TeamCheckIn.new(
      team_id: params[:team_id],
      check_in_id: params[:check_in_id],
      )
    if @team_check_in.save
    else
      render json: { errors: @team_check_in.errors.full_messages }, status: 422
    end
  end
end
