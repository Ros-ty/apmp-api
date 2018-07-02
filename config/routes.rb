Rails.application.routes.draw do
  apipie
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :categories
    end
  end
end
