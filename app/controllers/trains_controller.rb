class TrainsController < ApplicationController
    def index
        user = User.where(username: params[:username]).last
        user_id = user.id
        util_object = Utility.where(user_id:user_id).last
        bus_object = Bus.where(user_id:user_id).last
        car_object = Car.where(user_id:user_id).last
        food_object = Food.where(user_id:user_id).last
        plane_object = Plane.where(user_id:user_id).last
        subway_object = Subway.where(user_id:user_id).last
        train_object = Train.where(user_id:user_id).last
        data_to_return = {user: user, utilities: util_object,bus: bus_object,car: car_object,food: food_object,plane: plane_object,subway: subway_object,train: train_object}
        render json: data_to_return
    end

    def create
        Train.create(data_params)
        p Train.all
    end


    def data_params
          params.require(:data).permit(:day, :month,:year,:user_id)
    end
end
