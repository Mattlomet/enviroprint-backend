class FoodsController < ApplicationController
    def create
        Food.create(data_params)
        p Food.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
