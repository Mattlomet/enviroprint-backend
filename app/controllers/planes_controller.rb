class PlanesController < ApplicationController
    def create
        Plane.create(data_params)
        p Plane.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
