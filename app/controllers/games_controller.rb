class GamesController < ApplicationController
  before_action :authenticate_user!
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    render :new
  end

  def create
    @game = Game.new(
      date: params[:date],
      location: params[:location],
      team_1_id: params[:team_1_id],
      team_2_id: params[:team_2_id],
      check_in_id: params[:check_in_id],
      sport_id: params[:sport_id],
      league_id: params[:league_id],
      bar_id: params[:bar_id],
      time: params[:time]
      )
    if @game.save
      redirect_to "/games/new"
    else
      render :new
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
