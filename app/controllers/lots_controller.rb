# frozen_string_literal: true

class LotsController < ApplicationController
  def index
    grow = 1
    scope = 10 * grow
    if params[:city].present? && params[:price].present?
      results = Lot.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Lot.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @lots = results
      @lots = Lot.where('cast(price as text)  LIKE  ? ', "%#{params[:price]}%")
    elsif params[:price].present?
      @lots = Lot.where('cast(price as text) LIKE  ? ', "%#{params[:price]}%")
    elsif params[:city].present?
      results = Lot.near(params[:city], scope).order(:distance)
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Lot.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @lots = results
    else
      @lots = Lot.all
      end
    end

  def show
    @lot = Lot.find(params[:id])
  end
    end
