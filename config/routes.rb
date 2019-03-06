Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :posts, only: [:create, :show, :index, :update]
    resources :comments, only: [:create, :index]
  end

end
