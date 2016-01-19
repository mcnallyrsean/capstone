class TeamCheckInsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @team_check_ins = TeamCheckIn.new
  end 

  def create
    @team_1 = CheckIn.last.game.team_1.name
    @team_2 = CheckIn.last.game.team_2.name
    @team_check_in = TeamCheckIn.new(
      check_in_id: params[:check_in_id],
      team_id: params[:team_id]
      )
    if @team_check_in.save
      flash[:success] = "Awesome! Happy watching!"
      redirect_to "/"
    else
      render :new
    end
  end
end
