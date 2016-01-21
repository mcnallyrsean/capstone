class BarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  
  def index
    # if params[:search_team]
      # @bars = Team.where("name iLIKE ?", "%#{params[:search_team]}%").first.check_ins.map { |ci| ci.bar }.to_set
    #   if @bars.empty?
    #       flash[:danger] = "It doesn't look like we have any recorded check-ins for that team. Sorry!"
    #       redirect_to "/"
    # end
    if params[:search_team] && params[:search_location] && params[:search_radius]
      @bars = Bar.near(params[:search_location], params[:search_radius], :order => "distance")
      @searched = true
      @search_location = Geocoder.coordinates(params[:search_location])
      @bar_array = []
      @bars.each do |bar|
        bar.check_ins.each do |check_in|
          if check_in.game.team_1.name == params[:search_team] || check_in.game.team_2.name == params[:search_team]
            @bar_array << bar
          end
        end
      end
    else
      @bars = Bar.all.order("name ASC")
    end   
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(
      name: params[:name],
      place_id: params[:place_id],
      address: params[:address],
      formatted_address: params[:formatted_address],
      formatted_phone_number: params[:formatted_phone_number],
      latitude: params[:latitude],
      longitude: params[:longitude],
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
      address: params[:address],
      formatted_address: params[:formatted_address],
      formatted_phone_number: params[:formatted_phone_number],
      latitude: params[:latitude],
      longitude: params[:longitude],
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
    @search_location = params[:search_location]
    @search_radius = params[:search_radius]
    
    if @search_team.empty? &&  @search_location.empty?
      flash[:danger] = "Give me a team and location please!"
      redirect_to "/"
    elsif @search_location.empty?
      flash[:danger] = "Give me a location please!"
      redirect_to "/"
    elsif @search_team.empty? 
      flash[:danger] = "Give me a team please!"
      redirect_to "/"
    else
      redirect_to "/bars?search_team=#{params[:search_team]}&search_location=#{params[:search_location]}&search_radius=#{params[:search_radius]}"
    end
  end
end
