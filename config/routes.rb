Rails.application.routes.draw do
  get 'main/index'

  get 'search/create'

  resources :aboutus
  resources :producto_adjuntos
  resources :productos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'aboutus#index'
end
