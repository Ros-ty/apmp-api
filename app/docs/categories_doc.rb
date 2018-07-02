# Categories
module CategoriesDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :name, String, desc: 'Categories name. '
    param :content, String, desc: 'Categories content. '
  end

  api :GET, '/categories', 'All Categories '
  description <<-EOS
    == Get Action categories
      Is used for get all categories
        curl -v localhost:3000/api/v1/categories -X GET
    == Result
      [
        {
            "id": 1,
            "name": "test",
            "content": "test"
        },
        {
            "id": 2,
            "name": "test-name",
            "content": "test-content"
        }
      ]
    EOS
  def index; end

  api :POST, '/categories', 'Create category'
  description <<-EOS
    == Create categories article
    Is used for creating categories
      curl -v localhost:3000/api/v1/categories -v -X POST -F name='name' -F content='content'
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test"
      }
    EOS
  param_group :main_params
  def create; end

  api :GET, '/categories/:id', 'Show Category'
  description <<-EOS
    == Show single Category
    Is used for show single Category
      curl -v localhost:3000/api/v1/categories/1
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test"
      }
    EOS
  param :id, Integer, desc: 'Id Category for show. ', required: true
  def show; end

  api :PATCH, '/categories/:id', 'Update Category'
  description <<-EOS
    == Update Category article
    Is used for updating Category
      curl -v localhost:3000/api/v1/categories/1 -v -X PUT -F name='name'
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test"
      }
    EOS
  param_group :main_params
  def update; end

  api :DELETE, '/categories/:id', 'Delete Category'
  description <<-EOS
    == Delete single Category
    Is used for delete single Category
      curl -v localhost:3000/api/v1/categories/1 -X DELETE
    EOS
  param :id, Integer, desc: 'Id Category for delete. ', required: true
  def destroy; end
end
