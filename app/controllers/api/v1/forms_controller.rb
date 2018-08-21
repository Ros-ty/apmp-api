class Api::V1::FormsController < ApplicationController
  include FormsDoc
  before_action :set_form, only: [:destroy]

  # POST /forms
  def create
    @form = Form.create!(form_params)
    render json: @form, status: :created
  end

  # DELETE /forms/:id
  def destroy
    render json: @form.destroy, status: :no_content
  end

  private

  def form_params
    params.require(:form).permit(:form_name, :form_type, :category_id)
  end

  def set_form
    @form = Form.find(params[:id])
  end
end
