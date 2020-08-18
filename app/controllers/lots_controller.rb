# frozen_string_literal: true

class LotsController < ApplicationController
  def index
    grow = 1
    scope = 10 * grow
    if params[:city].present? && params[:price_min].present? || params[:price_max].present?
      results = Lot.near(params[:city], scope).order(:distance).min_price(params[:price_min]).max_price(params[:price_max])
      while results.empty?
        grow += 2
        scope += 100 * grow
        results = Lot.near(params[:city], scope, units: :km).order(:distance).limit(4)
      end
      @lots = results

    elsif params[:price_min].present? || params[:price_max].present?
      result = Lot.min_price(params[:price_min]).max_price(params[:price_max])
      @lots = result

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
class String
  def in_groups_of(n, sep = ' ')
    chars.each_slice(n).map(&:join).join(sep)
  end
end
