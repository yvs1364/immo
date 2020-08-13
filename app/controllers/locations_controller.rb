# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
    grow = 1
    scope = 10 * grow
    if params[:city].present? && params[:price_min].present? || params[:price_max].present? && params[:room].present?
      results = Location.near(params[:city], scope).order(:distance).min_price(params[:price_min]).max_price(params[:price_max]).min_room(params[:room])
      while results.empty?
        grow += 2
        scope += 10 * grow
        results = Location.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @locations = results

    elsif params[:price_min].present? || params[:price_max].present?
      result = Location.min_price(params[:price_min]).max_price(params[:price_max])
      @locations = result

    elsif params[:city].present?
      results = Location.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 10 * grow
        results = Location.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @locations = results

    elsif params[:room].present?
      @locations = Location.min_room(params[:room])

    else
      @locations = Location.all
    end

    # @markers = @locations.map do |property|
    #   {
    #     lat: property.latitude,
    #     lng: property.longitude
    #   }
    # end
  end

  def show
    @location = Location.find(params[:id])
  end
end
