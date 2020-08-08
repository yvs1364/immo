class PropertysController < ApplicationController
  def index
    if params[:query].present?
        @propertys = Property.where("city LIKE  ? ", "%#{params[:query]}%")

    else
        @propertys = Property.all
    end
  end
  def show
    @property = Property.find(params[:id])
  end
end
