class LotsController < ApplicationController
    def index
        if params[:query].present?
            @lots = Lot.where("city LIKE  ? ", "%#{params[:query]}%")
        else
            @lots = Lot.all
        end
      end
      def show
        @lot = Lot.find(params[:id])
      end
    end
    