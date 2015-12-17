class SportsController < ApplicationController

  def index
    @sports = Sport.all
  end

  def new
    @sports = Sport.new
    render :new
  end

  def create
    @sport = Sport.new(
      name: params[:name]
      )
    if @sport.save
      redirect_to "/sports/#{@sport.id}"
    else
      render :new
    end
  end

  def show
    @sport = Sport.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end
