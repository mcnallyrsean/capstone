class TeamsController < ApplicationController

  def index
    @teams = Team.all
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
      )
    if @team.save
      redirect_to "/teams/#{@team.id}"
    else
      render :new
    end
  end

  def show
    @team = Team.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
