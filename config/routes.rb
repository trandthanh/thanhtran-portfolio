Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'projects', to: 'projects#index'

  get 'messages', to: 'messages#new'
  post 'messages', to: 'messages#create', as: 'create_message'
end
