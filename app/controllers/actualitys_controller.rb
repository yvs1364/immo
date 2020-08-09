class ActualitysController < ApplicationController
    def  index
    @actualitys = Actuality.all
    end
    def show;end
end
