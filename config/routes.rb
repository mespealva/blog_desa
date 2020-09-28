Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index', as: 'posts'
  get 'posts/dashboard'
  post 'posts/index', to: 'posts#create'
  root 'posts#index'
end
