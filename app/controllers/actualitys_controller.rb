# frozen_string_literal: true

class ActualitysController < ApplicationController
  def index
    @actualitys = Actuality.all
  end

  def show
    @actuality = Actuality.find(params[:id])
  end
end
