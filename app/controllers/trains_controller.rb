class TrainsController < ApplicationController

    def create
        Train.create(data_params)
        p Train.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
