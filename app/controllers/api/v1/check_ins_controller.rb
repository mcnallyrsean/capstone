class Api::V1::CheckInsController < ApplicationController

  def index
    @check_ins = CheckIn.all
  end

  def create
    @check_in = CheckIn.new(
      bar_id: params[:bar_id],
      game_id: params[:game_id],
      user_id: params[:user_id]
      )
    if @check_in.save
    else
      render json: { errors: @check_in.errors.full_messages }, status: 422
    end
  end
end