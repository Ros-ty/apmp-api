# Answers
module AnswersDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :title, String, desc: 'Requests title. Can not be blank. Must be more than 2 characters.'
    param :content, String, desc: 'Requests content. Can not be blank. Must be more than 2 characters.'
    param :request_id, Integer, desc: 'Request Id'
  end

  api :GET, '/answers', 'All Answers '
  description <<-EOS
    == Get action answers
    Is used for get all answers
      curl -v localhost:3000/api/v1/answers -X GET
    == Result
      [
        {
          "id": 1,
          "title": "test",
          "content": "test",
          "request_id": 1
        },
        {
          "id": 2,
          "title": "test-title",
          "content": "test-content",
          "request_id": 2
        }
      ]
    EOS
  param_group :main_params
  def index; end

  api :POST, '/requests/:request_id/answers', 'Create Answers'
  description <<-EOS
    == Create answer article
    Is used for creating answer
      curl -v localhost:3000/api/v1/requests/1/answers -v -X POST -F title='title' -F content='content'
    == Result
      {
        "id": 1,
        "title": "ti",
        "content": "co",
        "answers": [
          {
            "id": 1,
            "title": "tis",
            "content": "cos",
            "request_id": 1
          }
        ]
      }
    EOS
  param_group :main_params
  def create; end

  api :GET, '/requests/:request_id/answers/:id', 'Show Answers'
  description <<-EOS
    == Show single answer
    Is used for show single answer
      curl -v localhost:3000/api/v1/requests/1/answers/1
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test",
        "request_id": 1
      }
    EOS
  param :id, Integer, desc: 'Id answer for show. ', required: true
  param_group :main_params
  def show; end

  api :PATCH, '/requests/:request_id/answers/:id', 'Update Answers'
  description <<-EOS
    == Update answer article
    Is used for updating answer
      curl -v localhost:3000/api/v1/requests/1/answers/1 -v -X PUT -F title='title-update', -F content='content-update'
    == Result
      {
        "id": 1,
        "name": "test",
        "content": "test",
        "request_id": 1
      }
    EOS
  param :id, Integer, desc: 'Id answer for show. ', required: true
  param_group :main_params
  def update; end

  api :DELETE, '/requests/:request_id/answers/:id', 'Delete Answers'
  description <<-EOS
    == Delete single answer
    Is used for delete single answer
      curl -v localhost:3000/api/v1/requests/1/answers/1 -X DELETE
    EOS
  param :id, Integer, desc: 'Id answer for delete. ', required: true
  def destroy; end
end
