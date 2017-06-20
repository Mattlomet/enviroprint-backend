class CarsController < ApplicationController
    def create
        Car.create(data_params)
        p Car.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
