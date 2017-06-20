class SubwaysController < ApplicationController

    def create
        Subway.create(data_params)
        p Subway.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
