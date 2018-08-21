# Forms
module FormsDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :form_name, String, required: true, desc: 'Forms name. Can not be blank. Must be more than 2 characters.'
    param :form_type, String, desc: 'Forms type. Only [String/File]'
    param :category_id, Integer, desc: 'Category ID'
  end

  api :POST, '/forms', 'Create Form'
  description <<-EOS
    == Create forms article
    Is used for creating forms
      curl -v https://apmp-api.herokuapp.com/api/v1/forms -v -X POST -F form_name='form_name' -F form_type='String' -F category_id=1
    == Result
      {
        "id": 1,
        "form_name": "form_name",
        "form_type": "form_type"
      }
    EOS
  param_group :main_params
  def create; end

  api :DELETE, '/forms/:id', 'Delete Form'
  description <<-EOS
    == Delete single form
    Is used for delete single form
      curl -v https://apmp-api.herokuapp.com/api/v1/forms/1 -X DELETE
    EOS
  param :id, Integer, desc: 'Id form for delete. ', required: true
  def destroy; end
end
