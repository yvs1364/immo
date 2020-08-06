class PropertysController < ApplicationController
    def index
        @propertys = Property.all
    end
    
    def show
        @property = Property.find(params[:id])
    end
end
