class LeaguesController < ApplicationController
  before_action :authenticate_user!
  def index
    @leagues = League.all
  end

  def new
    @league = League.new
    render :new
  end

  def create
    @league = League.new(
      name: params[:name],
      sport_id: params[:sport_id]
      )
    if @league.save
      redirect_to "/leagues/#{@league.id}"
    else
      render :new
    end
  end

  def show
    @league = League.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
