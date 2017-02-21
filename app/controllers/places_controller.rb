class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @places = Place.search(params[:term], params[:page]).page(params[:page])
    if(params[:query])
      @places = Place.search(params[:query]).page(params[:page])
    end
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end
