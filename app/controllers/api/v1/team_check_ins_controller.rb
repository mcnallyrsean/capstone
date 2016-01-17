class Api::V1::TeamCheckInsController < ApplicationController

  def index
    @team_check_ins = TeamCheckIn.all
  end

   def create
    @team_1 = CheckIn.last.game.team_1.name
    @team_2 = CheckIn.last.game.team_2.name
    @check_in = CheckIn.new(
      team_id: params[:team_id],
      check_in_id: params[:check_in_id],
      )
    if @check_in.save
    else
      render json: { errors: @check_in.errors.full_messages }, status: 422
    end
  end
end
