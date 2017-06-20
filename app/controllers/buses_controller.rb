class BusesController < ApplicationController
    def create
        Bus.create(data_params)
        p Bus.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
