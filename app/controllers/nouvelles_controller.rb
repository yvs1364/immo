# frozen_string_literal: true

class NouvellesController < ApplicationController
  def index
    @nouvelles = Nouvelle.all
  end

  def show
    @nouvelle = Nouvelle.find(params[:id])
  end
end
