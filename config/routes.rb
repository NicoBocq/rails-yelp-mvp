Rails.application.routes.draw do
  get 'reviews/inde'
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # namespace :admin do
  #   resources :restaurants, only: [:index]
  # end
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :index, :new, :create ]
  end
  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
