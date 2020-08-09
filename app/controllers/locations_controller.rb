class LocationsController < ApplicationController
    def index
    if params[:query].present?
        @locations =  Location.where("city LIKE  ? ", "%#{params[:query]}%")
    else
        @locations = Location.all
    end
  end
  def show
    @location = Location.find(params[:id])
  end
end
