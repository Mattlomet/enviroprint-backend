class UsersController < ApplicationController
  def index
      logging_in_user = User.where(username: params[:username]).first
      p logging_in_user

    if logging_in_user.password === params[:password]
      logging_users = logging_in_user.id

      logged_in_state = {views: true, user_id: logging_users}
      render json: logged_in_state

   else
        loggedInState = false
        render json:  loggedInState
    end
  end

  def show
      logging_in_user = User.find(params[:user_id])
      name = logging_in_user.username
      render json: name
  end

  def create
      User.create(user_params)
      user_name = user_params[:username]
      user = User.where(username: user_name).first
      user_id = user.id

      logged_in_state = {views: true, user_id: user_id}
      render json: logged_in_state
  end

  private

  def user_params
        params.require(:data).permit(:username, :password)
  end

end
