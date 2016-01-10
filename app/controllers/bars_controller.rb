class BarsController < ApplicationController

  def index
    @bars = Bar.all

    if params[:search_team]
      @bars = Team.where("name iLIKE ?", "%#{params[:search_team]}%").first.check_ins.map { |ci| ci.bar }.to_set
    end
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(
      id: params[:id],
      name: params[:name],
      location: params[:location],
      description: params[:description],
      hours_of_operation: params[:hours_of_operation],
      status: params[:status],
      promo: params[:promo],
      facebook_url: params[:facebook_url],
      twitter_handle: params[:twitter_handle],
      number_of_tvs: params[:number_of_tvs]
      )
    if @bar.save
      redirect_to "/bars/#{@bar.id}"
    else
      render :new
    end
  end

  def show
    @bar = Bar.find_by(id: params[:id])
    @games = Game.all
  end

  def edit
    @bar = Bar.find_by(id: params[:id])
    render :edit
  end

  def update
    @bar = Bar.find_by(id: params[:id])
    if @bar.update(
      id: params[:id],
      name: params[:name],
      location: params[:location],
      description: params[:description],
      hours_of_operation: params[:hours_of_operation],
      status: params[:status],
      promo: params[:promo],
      facebook_url: params[:facebook_url],
      twitter_handle: params[:twitter_handle],
      number_of_tvs: params[:number_of_tvs]
      )
      redirect_to "/bars/#{@bar.id}"
    else
      render :edit
    end
  end

  def destroy
  end

  def search
    redirect_to "/bars?search_team=#{params[:search_team]}"
  end

end
