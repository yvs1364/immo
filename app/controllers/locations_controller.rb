class LocationsController < ApplicationController
    def index
      grow = 1
      scope = 10 * grow

    if params[:city].present?  && params[:price].present?
      results = Location.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Location.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @locations = results

        @locations =  Location.where("price LIKE  ? ", "%#{params[:price]}%")
    elsif params[:price].present?
      @locations =  Location.where("price LIKE  ? ", "%#{params[:price]}%")
    elsif params[:city].present?
      results = Location.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Location.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @locations = results
    else
      @locations = Location.all
    end
  end
  def show
    @location = Location.find(params[:id])
  end
end
