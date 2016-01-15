class TeamsController < ApplicationController

  def index
    @teams = Team.all
    if params[:league_id]
      @teams = Team.where(league_id: params[:league_id]).order("name ASC")
    end
  end

  def new
    @team = Team.new
    render :new
  end

  def create
    @team = Team.new(
      name: params[:name],
      league_id: params[:league_id],
      sport_id: params[:sport_id],
      logo: params[:logo]
      )
    if @team.save
      redirect_to "/teams/#{@team.id}"
    else
      render :new
    end
  end

  def show
    @team = Team.find_by(id: params[:id])
    @games = Game.where("team_1_id = ? OR team_2_id = ?", @team.id, @team.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
