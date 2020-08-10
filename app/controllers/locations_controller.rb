class LocationsController < ApplicationController
    def index
    if params[:city].present?  && params[:price].present?
        @locations =  Location.where("city LIKE  ? ", "%#{params[:city]}%")
        @locations =  Location.where("price LIKE  ? ", "%#{params[:price]}%")
    elsif params[:city].present?
      @locations =  Location.where("city LIKE  ? ", "%#{params[:city]}%")
    elsif params[:price].present?
      @locations =  Location.where("price LIKE  ? ", "%#{params[:price]}%")
    else
      @locations = Location.all
    end
  end
  def show
    @location = Location.find(params[:id])
  end
end
