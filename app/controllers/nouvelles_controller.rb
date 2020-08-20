# frozen_string_literal: true

class NouvellesController < ApplicationController
  def index
    @nouvelles = Nouvelle.order(date: :desc)
  end

  def show
    @nouvelle = Nouvelle.find(params[:id])
  end
end
