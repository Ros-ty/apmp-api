# Users
module UsersDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :role, String, required: true, desc: 'User role. [admin, moderator, user]'
  end

  api :GET, '/users', 'All Users '
  description <<-EOS
    == Get action users
      Is used for get all users
        curl -v https://apmp-api.herokuapp.com/api/v1/users -X GET
    == Result
      [
        {
          "id": 1,
          "provider": "email",
          "uid": "email_admin@gmail.com",
          "allow_password_change": false,
          "first_name": null,
          "last_name": null,
          "phone_number": null,
          "email": "email_admin@gmail.com",
          "created_at": "2018-08-14T13:57:48.981Z",
          "updated_at": "2018-08-14T13:57:48.981Z",
          "role": "admin"
        },
        {
          "id": 2,
          "provider": "email",
          "uid": "email_moderator@gmail.com",
          "allow_password_change": false,
          "first_name": null,
          "last_name": null,
          "phone_number": null,
          "email": "email_moderator@gmail.com",
          "created_at": "2018-08-14T13:57:49.118Z",
          "updated_at": "2018-08-14T13:57:49.118Z",
          "role": "moderator"
        }
      ]
    EOS
  param_group :main_params
  def index; end

  api :PATCH, '/users/:id', 'Update user role'
  description <<-EOS
    == Update user article
    Is used for updating user
      curl -v https://apmp-api.herokuapp.com/api/v1/users/1 -v -X PUT -F role='user'
    == Result
      {
        "id": 2,
        "provider": "email",
        "uid": "email_moderator@gmail.com",
        "allow_password_change": false,
        "first_name": null,
        "last_name": null,
        "phone_number": null,
        "email": "email_moderator@gmail.com",
        "created_at": "2018-08-14T13:57:49.118Z",
        "updated_at": "2018-08-14T13:57:49.118Z",
        "role": "user"
      }
    EOS
  param :id, Integer, desc: 'Id user for update. ', required: true
  param_group :main_params
  def update; end
end