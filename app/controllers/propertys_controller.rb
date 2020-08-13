# frozen_string_literal: true

class PropertysController < ApplicationController
  def index
    grow = 1
    scope = 10 * grow
    if params[:city].present? && params[:price_min].present? || params[:price_max].present? && params[:room].present?
      results = Property.near(params[:city], scope).order(:distance).min_price(params[:price_min]).max_price(params[:price_max]).min_room(params[:room])
      while results.empty?
        grow += 2
        scope += 10 * grow
        results = Property.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @propertys = results

    elsif params[:price_min].present? || params[:price_max].present?
      result = Property.min_price(params[:price_min]).max_price(params[:price_max])
      @propertys = result

    elsif params[:city].present?
      results = Property.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 10 * grow
        results = Property.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @propertys = results

    elsif params[:room].present?
      @propertys = Property.min_room(params[:room])

    else
      @propertys = Property.all
    end

    # @markers = @propertys.map do |property|
    #   {
    #     lat: property.latitude,
    #     lng: property.longitude
    #   }
    # end
  end

  def show
    @property = Property.find(params[:id])
  end
end
