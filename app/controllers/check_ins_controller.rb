class CheckInsController < ApplicationController

  def index
    @check_ins = CheckIn.all
  end

  def new
    @check_in = CheckIn.new
    render :new
  end

  def create
    @check_in = CheckIn.new(
      user_id: current_user.id,
      bar_id: params[:bar_id],
      team_1_id: params[:team_1_id],
      game_id: params[:game_id],
      league_id: params[:league_id],
      sport_id: params[:sport_id]
      )
    if @check_in.save
      redirect_to "/team_check_ins/new"
    else
      render :new
    end
  end

  def show
    @check_in = CheckIn.find_by(id: params[:id])
  end

  def edit
    @check_in = CheckIn.find_by(id: params[:id])
    render :edit
  end

  def update
    @check_in = CheckIn.find_by(id: params[:id])
    @check_in.update(
      user_id: current_user.id,
      bar_id: params[:bar_id],
      team_id: params[:team_id],
      game_id: params[:game_id],
      league_id: params[:league_id],
      sport_id: params[:sport_id]
      )
    if @check_in.save
      redirect_to "/check_ins/#{@check_in.id}"
    else
      render :edit
    end
  end

  def destroy
  end
  
end
