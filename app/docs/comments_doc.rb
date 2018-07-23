# Answers
module CommentsDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :author, String, desc: 'Comment author. Can not be blank. Must be more than 2 characters.'
    param :content, String, desc: 'Comment content. Can not be blank. Must be more than 2 characters.'
    param :request_id, Integer, desc: 'Request Id', required: true
    param :answer_id, Integer, desc: 'Answer Id', required: true
  end

  api :GET, '/requests/:request_id/answers/:answer_id/comments', 'All Comments '
  description <<-EOS
    == Get action comments
    Is used for get all comments
      curl -v https://apmp-api.herokuapp.com/api/v1/requests/1/answers/1/comments -X GET
    == Result
      [
        {
          "id": 1,
          "author": "author",
          "content": "content",
          "answer_id": 1
        },
        {
          "id": 2,
          "author": "author",
          "content": "content",
          "answer_id": 1
        }
      ]
    EOS
  param_group :main_params
  def index; end

  api :POST, '/requests/:request_id/answers/:answer_id/comments', 'Create Comment'
  description <<-EOS
    == Create comment article
    Is used for creating comment
      curl -v https://apmp-api.herokuapp.com/api/v1/requests/1/answers/1/comments -v -X POST -F author='author' -F content='content'
    == Result
      {
        "id": 1,
        "title": "title",
        "content": "content",
        "comments": [
          {
            "id": 1,
            "author": "author",
            "content": "content",
            "answer_id": 1
          }
        ]
      }
    EOS
  param_group :main_params
  def create; end

  api :GET, '/requests/:request_id/answers/:answer_id/comments/:id', 'Show Comment'
  description <<-EOS
    == Show single comment
    Is used for show single comment
      curl -v https://apmp-api.herokuapp.com/api/v1/requests/1/answers/1/comments/1
    == Result
      {
        "id": 1,
        "author": "author",
        "content": "test",
        "answer_id": 1
      }
    EOS
  param :id, Integer, desc: 'Id comment for show. ', required: true
  param_group :main_params
  def show; end

  api :PATCH, '/requests/:request_id/answers/:answer_id/comments/:id', 'Update Comment'
  description <<-EOS
    == Update comment article
    Is used for updating comment
      curl -v https://apmp-api.herokuapp.com/api/v1/requests/1/answers/1/comments/1 -v -X PUT -F author='author', -F content='content-update'
    == Result
      {
        "id": 1,
        "author": "author",
        "content": "content-update",
        "request_id": 1
      }
    EOS
  param :id, Integer, desc: 'Id comment for show. ', required: true
  param_group :main_params
  def update; end

  api :DELETE, '/requests/:request_id/answers/:answer_id/comments/:id', 'Delete Comment'
  description <<-EOS
    == Delete single comment
    Is used for delete single comment
      curl -v https://apmp-api.herokuapp.com/api/v1/requests/1/answers/1/comments/1 -X DELETE
    EOS
  param :id, Integer, desc: 'Id comment for delete. ', required: true
  def destroy; end
end
