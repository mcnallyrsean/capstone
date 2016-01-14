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
      name: params[:name],
      place_id: params[:place_id],
      vicinity: params[:vicinity],
      formatted_address: params[:formatted_address],
      formatted_phone_number: params[:formatted_phone_number],
      lat: params[:lat],
      lng: params[:lng],
      icon: params[:icon],
      rating: params[:rating],
      types: params[:types],
      url: params[:url]
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
    @bar_attributes = Unirest.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{@bar.place_id}&key=#{ENV['API_KEY']}").body
    @photo_reference = @bar_attributes['result']['photos'][0]['photo_reference']
    @bar_photos = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{@photo_reference}&key=#{ENV['API_KEY']}"
  end

  def edit
    @bar = Bar.find_by(id: params[:id])
    render :edit
  end

  def update
    @bar = Bar.find_by(id: params[:id])
    if @bar.update(
      name: params[:name],
      place_id: params[:place_id],
      vicinity: params[:vicinity],
      formatted_address: params[:formatted_address],
      formatted_phone_number: params[:formatted_phone_number],
      lat: params[:lat],
      lng: params[:lng],
      icon: params[:icon],
      rating: params[:rating],
      types: params[:types],
      url: params[:url]
      )
      redirect_to "/bars/#{@bar.id}"
    else
      render :edit
    end
  end

  def destroy
  end

  def search
    @search_team = params[:search_team]
    
    if @search_team.empty?
      flash[:danger] = "Give me an address and a team bro!"
      redirect_to "/"
    else
      redirect_to "/bars?search_team=#{params[:search_team]}"
    end
  end
end
