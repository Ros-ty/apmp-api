class Api::V1::RequestsController < ApplicationController
  include RequestsDoc
  before_action :set_request, only: [:show, :update, :destroy]
  
  # GET /requests
  def index
    @requests = Request.all
    render json: @requests, status: :ok
  end

  # POST /requests
  def create
    @request = Request.create!(request_params)
    render json: @request, status: :created
  end

  # GET /requests/:id
  def show
    render json: @request, status: :ok
  end

  # PUT /requests/:id
  def update
    @request.update(request_params)
    render json: @request, status: :ok
  end

  # DELETE /requests/:id
  def destroy
    render json: @request.destroy, status: :no_content
  end

  private

  def request_params
    params.permit(:title, :content)
  end

  def set_request
    @request = Request.find(params[:id])
  end
end
