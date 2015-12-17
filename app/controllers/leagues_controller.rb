class LeaguesController < ApplicationController

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
