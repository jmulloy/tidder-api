Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :posts, except: [:new, :edit]
    resources :comments, only: [:new]
  end

end
