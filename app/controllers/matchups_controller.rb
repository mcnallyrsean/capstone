class MatchupsController < ApplicationController
  def 
    @matchups = Matchup.all
  end

  def new
    @matchup = Matchup.new
    render :new
  end

  def create
    @matchup = Matchup.new(
      game_id: params[:game_id],
      team_1_id: params[:team_1_id],
      team_2_id: params[:team_2_id]
      )
    if @matchup.save
      redirect_to '/matchups'
    else 
      render :new
  end

  def show
    @matchup = Matchup.find_by(id: params[:id])
  end
end
