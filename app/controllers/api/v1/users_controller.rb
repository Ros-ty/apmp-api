class Api::V1::UsersController < ApplicationController
  include UsersDoc
  before_action :set_user, only: [:update]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # PUT /users/:id
  def update
    @user.update(user_params)
    render json: @user, status: :ok
  end

  private

  def user_params
    params.permit(:role)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
