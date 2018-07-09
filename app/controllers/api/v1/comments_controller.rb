class Api::V1::CommentsController < ApplicationController
  include CommentsDoc
  before_action :set_request
  before_action :set_answer
  before_action :set_request_answer
  before_action :set_answer_comment, only: [:show, :update, :destroy]
  
  # GET /comments
  def index
    render json: @answer.comments, status: :ok
  end

  # POST /comments
  def create
    @answer.comments.create!(comment_params)
    render json: @answer, status: :created
  end

  # GET /comments/:id
  def show
    render json: @comment, status: :ok
  end

  # PUT /comments/:id
  def update
    @comment.update(comment_params)
    render json: @comment, status: :ok
  end

  # DELETE /comments/:id
  def destroy
    render json: @comment.destroy, status: :no_content
  end

  private

  def comment_params
    params.permit(:author, :content)
  end

  def set_request
    @request = Request.find(params[:request_id])
  end
  
  def set_request_answer
    @request.answers.find_by!(id: params[:answer_id]) if @request
  end

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

  def set_answer_comment
    @comment = @answer.comments.find_by!(id: params[:id]) if @answer
  end
end
