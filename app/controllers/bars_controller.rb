class BarsController < ApplicationController

  def index
    @bars = Bar.all
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
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
