class LotsController < ApplicationController
    def index
        if params[:city].present? && params[:price].present?
          @lots = Lot.where("city LIKE  ? ", "%#{params[:city]}%")
          @lots = Lot.where("price LIKE  ? ", "%#{params[:price]}%")
        elsif params[:city].present?
          @lots = Lot.where("city LIKE  ? ", "%#{params[:city]}%")
        elsif params[:price].present?
          @lots = Lot.where("price LIKE  ? ", "%#{params[:price]}%")
        else
          @lots = Lot.all
        end
      end
      def show
        @lot = Lot.find(params[:id])
      end
    end
    