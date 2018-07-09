# Requests
module RequestsDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :title, String, desc: 'Requests title. Can not be blank. Must be more than 2 characters.'
    param :content, String, desc: 'Requests content. Can not be blank. Must be more than 2 characters.'
  end

  api :GET, '/requests', 'All Requests '
  description <<-EOS
    == Get action requests
    Is used for get all requests
      curl -v localhost:3000/api/v1/requests -X GET
    == Result
      [
        {
            "id": 1,
            "title": "test",
            "content": "test"
        },
        {
            "id": 2,
            "title": "test-title",
            "content": "test-content"
        }
      ]
    EOS
  param_group :main_params
  def index; end

  api :POST, '/requests', 'Create Request'
  description <<-EOS
    == Create request article
    Is used for creating request
      curl -v localhost:3000/api/v1/requests -v -X POST -F title='title' -F content='content'
    == Result
      {
        "id": 1,
        "title": "test",
        "content": "test"
      }
    EOS
  param_group :main_params
  def create; end

  api :GET, '/requests/:id', 'Show Request'
  description <<-EOS
    == Show single request
    Is used for show single request
      curl -v localhost:3000/api/v1/requests/1
    == Result
      {
        "id": 1,
        "title": "test",
        "content": "test"
      }
    EOS
  param :id, Integer, desc: 'Id request for show. ', required: true
  param_group :main_params
  def show; end

  api :PATCH, '/requests/:id', 'Update Request'
  description <<-EOS
    == Update request article
    Is used for updating request
      curl -v localhost:3000/api/v1/requests/1 -v -X PUT -F title='title'
    == Result
      {
        "id": 1,
        "title": "test",
        "content": "test"
      }
    EOS
  param :id, Integer, desc: 'Id request for show. ', required: true
  param_group :main_params
  def update; end

  api :DELETE, '/requests/:id', 'Delete Request'
  description <<-EOS
    == Delete single request
    Is used for delete single request
      curl -v localhost:3000/api/v1/requests/1 -X DELETE
    EOS
  param :id, Integer, desc: 'Id request for delete. ', required: true
  def destroy; end
end
