class Api::V1::CategoriesController < ApplicationController
  include CategoriesDoc
  before_action :set_category, only: [:show, :update, :destroy]
  
  # GET /categories
  def index
    @categories = Category.all
    render json: @categories, status: :ok
  end

  # POST /categories
  def create
    @category = Category.create!(category_params)
    render json: @category, status: :created
  end

  # GET /categories/:id
  def show
    render json: @category, status: :ok
  end

  # PUT /categories/:id
  def update
    @category.update(category_params)
    render json: @category, status: :ok
  end

  # DELETE /categories/:id
  def destroy
    render json: @category.destroy, status: :no_content
  end

  private

  def category_params
    params.permit(:name, :content)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
