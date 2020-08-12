# frozen_string_literal: true

class PropertysController < ApplicationController
  def index
    grow = 1
    scope = 10 * grow

    if params[:city].present? && params[:price].present?
      results = Property.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Property.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @propertys = results
      @propertys = Property.where('cast(price as text) LIKE  ? ', "%#{params[:price]}%")
    elsif params[:price].present?
      @propertys = Property.where('cast(price as text) LIKE  ? ', "%#{params[:price]}%")
    elsif params[:city].present?
      results = Property.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Property.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @propertys = results
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
