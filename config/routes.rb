Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'
  get 'projects', to: 'projects#index'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'messages', to: 'messages#create', as: 'create_message'
end
