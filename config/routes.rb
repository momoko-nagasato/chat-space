Rails.application.routes.draw do
  #一旦コメントアウトdevise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'messages#index'
  resources :users, only: [:edit, :update]
end
