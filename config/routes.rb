Rails.application.routes.draw do
  apipie
  devise_for :users
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'

      mount_devise_token_auth_for 'Admin', at: 'admin_auth'
      as :admin do
        # Define routes for Admin within this block.
      end
      resources :categories
      resources :requests
      resources :answers
      resources :comments
    end
  end
end
