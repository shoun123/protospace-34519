Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :users
  resources :prototypes do
    resources :comments, only: :create
  end
end


# devise_for :users
# root to: 'tweets#index'
# resources :tweets do
#   resources :comments, only: :create
#   collection do
#     get 'search'
#   end
# end
# resources :users, only: :show
