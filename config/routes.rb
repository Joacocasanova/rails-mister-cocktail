Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  root to: "cocktails#index"
  resources :cocktails, only: [ :index, :show, :create, :new ] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
