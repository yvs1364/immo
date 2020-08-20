# frozen_string_literal: true

class ActualitysController < ApplicationController
  def index
    @actualitys = Actuality.order(date: :desc)
  end

  def show
    @actuality = Actuality.find(params[:id])
  end
end
class Date
  def current
    ::Time.zone ? ::Time.zone.today : ::Date.today
  end
end
