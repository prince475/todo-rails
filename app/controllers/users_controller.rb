class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    render json: { data: user, message: 'User created successfully' }
  end

  def update
    user = find_user
    user.update(user_params)
    render json: { data: user, message: 'User created successfully' }
  end

  def index
    user = User.all
    render json: user
  end

  private

  def user_params
    params.permit(:email, :password)
  end
  def find_user
    User.find(params[:id])
  end
end
