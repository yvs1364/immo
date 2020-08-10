class PropertysController < ApplicationController
  def index
    if params[:city].present? && params[:price].present?
        @propertys = Property.where("city LIKE  ? ", "%#{params[:city]}%")
        @propertys = Property.where("price LIKE  ? ", "%#{params[:price]}%")
    elsif params[:city].present?
      @propertys = Property.where("city LIKE  ? ", "%#{params[:city]}%")
    elsif  params[:price].present?
      @propertys = Property.where("price LIKE  ? ", "%#{params[:price]}%")
    else
        @propertys = Property.all
    end
  end
  def show
    @property = Property.find(params[:id])
  end
end
