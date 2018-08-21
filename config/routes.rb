Rails.application.routes.draw do
  apipie
  devise_for :users
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'

      # mount_devise_token_auth_for 'Admin', at: 'admin_auth'
      # as :admin do
      #   # Define routes for Admin within this block.
      # end
      resources :users, only: [:index, :update]
      resources :categories
      resources :forms, only: [:create, :destroy]
      resources :answers, only: [:index]

      resources :requests do
        resources :answers, except: [:index] do
          resources :comments
        end
      end
    end
  end
end
