class PlacesController < ApplicationController
  def index
    @places = Place.search(params[:term], params[:page]).page(params[:page])
    if(params[:query])
      @places = Place.search(params[:query]).page(params[:page])
    end
  end

  def new
    @place = Place.new
  end
end
