class Api::V1::AnswersController < ApplicationController
  include AnswersDoc
  before_action :set_request, except: [:index]
  before_action :set_request_answer, only: [:show, :update, :destroy]

  # GET /answers
  def index
    @answers = Answer.all
    render json: @answers, status: :ok
  end

  # POST /answers
  def create
    @request.answers.create!(answer_params)
    render json: @request, status: :created
  end

  # GET /answers/:id
  def show
    render json: @answer, status: :ok
  end

  # PUT /answers/:id
  def update
    @answer.update(answer_params)
    render json: @answer, status: :ok
  end

  # DELETE /answers/:id
  def destroy
    render json: @answer.destroy, status: :no_content
  end

  private

  def answer_params
    params.permit(:title, :content)
  end

  def set_request
    @request = Request.find(params[:request_id])
  end

  def set_request_answer
    @answer = @request.answers.find_by!(id: params[:id]) if @request
  end
end
