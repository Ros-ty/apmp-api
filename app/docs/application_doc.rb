# Documentation for login
module ApplicationDoc
  extend Apipie::DSL::Concern

  def_param_group :auth_params do
    param :email, String, desc: 'The field for user email', required: true
    param :password, String, desc: 'The field for user password, min 8 characters', required: true
    param :password_confirmation, String, desc: 'The field for user password confirmation', required: true
  end

  def_param_group :sign_in_params do
    param :email, String, desc: 'The field for user email', required: true
    param :password, String, desc: 'The field for user password, min 8 characters', required: true
  end

  api :POST, '/auth', 'Create user'
  description <<-EOS
    == Create User
      Is used for create user
        curl -v https://apmp-api.herokuapp.com/api/v1/auth -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"email": "email@example.com", "password": "password", "password_confirmation": "password"}'
    == Result
      {
        "status": "success",
        "data": {
            "id": 1,
            "provider": "email",
            "uid": "email@example.com",
            "allow_password_change": false,
            "email": "email@example.com",
            "created_at": "2018-07-02T10:42:00.684Z",
            "updated_at": "2018-07-02T10:42:00.810Z"
        }
      }
    == Headers which you need for continue work
      Custom header
        "uid": "xxxx",
        "client": "xxxx",
        "access-token": "xxxx"
    EOS
  param_group :auth_params
  def create; end

  api :POST, '/auth/sign_in', 'Sign in user'
  description <<-EOS
    == Check user
    Is used for sing_in user
      Is used for sing_in
        curl -v https://apmp-api.herokuapp.com/api/v1/auth/sign_in -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"email": "email@example.com", "password": "password"}'
    == Result
      {
        "data": {
            "id": 1,
            "email": "petro@gmail.com",
            "provider": "email",
            "uid": "petro@gmail.com",
            "allow_password_change": false
        }
      }
    == Headers which you need for continue work
      Custom header
        "uid": "xxxx",
        "client": "xxxx",
        "access-token": "xxxx"
    EOS
  param_group :sign_in_params
  def show; end

  api :DELETE, '/auth/sign_out', 'Destroy session'
  description <<-EOS
    == Destroy session for User
    Is used for destroy user session
      Is used for destroy
        curl -v https://apmp-api.herokuapp.com/api/v1/auth/sign_out -X DELETE -H 'Content-Type: application/json' -H 'access-token: ZUhZTi5bvi5NajqZsgUp9Q' -H 'client: w_7IVg-ZRB_Pbs6elMhwuw' -H 'uid: email@example.com'
    == Result
      "success": true
    == Headers which you need for continue work
      Custom header
        "uid": "xxxx",
        "client": "xxxx",
        "access-token": "xxxx"
    EOS
  def destroy; end
end
