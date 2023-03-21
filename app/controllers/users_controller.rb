class UsersController < ApplicationController
  protect_from_forgery with: :null_session


  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


  def create
    user = User.create(user_params)
    cookies[:email] = user.email
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

  def login
    email = params[:email]
    session[:email] = email
    render json: { message: "you are logged in" }
  end

  def logout
    email = params[:email]
    session.delete[:email] = email
    render json: { message: "you have been logged out" }
  end

  private

  def user_params
    params.permit(:email, :password)
  end

  def find_user
    User.find(params[:id])
  end

  def render_unprocessable_entity_response(invalid)
    render json: {errors: invalid.record.errors }, status: :unprocessable_entity
  end
end
