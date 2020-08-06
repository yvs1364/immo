class PropertysController < ApplicationController
    def index
        if params[:query].present?
            @propertys = Property.where(name: params[:query])
          else
            @propertys = Property.all
          end
    end
    def show
        @property = Property.find(params[:id])
    end

    private

    def search
    params.require(:property).permit(:name)
    end
end
