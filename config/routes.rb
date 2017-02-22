Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :contactos
  resources :aboutus
  resources :producto_adjuntos
  resources :productos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'aboutus#index'
  get 'search/create'

  # User authentication
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

end
