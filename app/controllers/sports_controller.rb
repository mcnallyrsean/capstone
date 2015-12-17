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
    @sport = Sport.find_by(id: params[:id])
  end

  def update
    @sport = Sport.find_by(id: params[:id])
    @sport.update(
      name: params[:name]
      )
    if @sport.save
      redirect_to "/sports/#{@sport.id}"
    else
      render :edit
    end
  end

  def destroy
  end
  
end
