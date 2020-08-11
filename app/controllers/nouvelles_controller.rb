class NouvellesController < ApplicationController
  def index
     @nouvelles = Nouvelle.all
  end
end
