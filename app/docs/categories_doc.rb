# Categories
module CategoriesDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :name, String, required: true, desc: 'Categories name. Can not be blank. Must be more than 2 characters.'
    param :content, String, desc: 'Categories content. Can not be blank. Must be more than 2 characters.'
  end

  api :GET, '/categories', 'All Categories '
  description <<-EOS
    == Get action categories
      Is used for get all categories
        curl -v https://apmp-api.herokuapp.com/api/v1/categories -X GET
    == Result
      [
        {
          "id": 1,
          "name": "test",
          "content": "test"
          "forms": [
            {
              "id": 4,
              "form_name": "form_name",
              "form_type": "form_type",
              "category_id": 1
            }
            {
              "id": 5,
              "form_name": "form_name",
              "form_type": "form_type",
              "category_id": 1
            }
          ]
        },
        {
          "id": 2,
          "name": "test-name",
          "content": "test-content"
          "forms": []
        }
      ]
    EOS
  param_group :main_params
  def index; end

  api :POST, '/categories', 'Create Сategory'
  description <<-EOS
    == Create categories article
    Is used for creating categories
      curl -v https://apmp-api.herokuapp.com/api/v1/categories -v -X POST -F name='name' -F content='content'
    == Result
      {
        "name": "test",
        "content": "test"
        "forms": [
          {
            "form_name": "form_name",
            "form_type": "form_type"
          }
        ]
      }
    EOS
  param_group :main_params
  def create; end

  api :GET, '/categories/:id', 'Show Category'
  description <<-EOS
    == Show single category
    Is used for show single category
      curl -v https://apmp-api.herokuapp.com/api/v1/categories/1
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test"
        "forms": [
          {
            "id": 4,
            "form_name": "form_name",
            "form_type": "form_type",
            "category_id": 1
          }
        ]
      }
    EOS
  param :id, Integer, desc: 'Id category for show. ', required: true
  param_group :main_params
  def show; end

  api :PATCH, '/categories/:id', 'Update Category'
  description <<-EOS
    == Update category article
    Is used for updating category
      curl -v https://apmp-api.herokuapp.com/api/v1/categories/1 -v -X PUT -F name='name'
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test"
        "forms": [
          {
            "id": 4,
            "form_name": "form_name",
            "form_type": "form_type",
            "category_id": 1
          }
        ]
      }
    EOS
  param :id, Integer, desc: 'Id category for show. ', required: true
  param_group :main_params
  def update; end

  api :DELETE, '/categories/:id', 'Delete Category'
  description <<-EOS
    == Delete single category
    Is used for delete single category
      curl -v https://apmp-api.herokuapp.com/api/v1/categories/1 -X DELETE
    EOS
  param :id, Integer, desc: 'Id category for delete. ', required: true
  def destroy; end
end
