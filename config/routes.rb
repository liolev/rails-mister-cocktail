Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end
  resources :ingredient, only: []

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
