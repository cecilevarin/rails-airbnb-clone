Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'gears#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gears do
    resources :bookings, only: [ :new, :create, :destroy, :edit]
  end

  resources :bookings, only: [:show, :destroy]

  namespace :user do
    resources :dashboards, only: :index
  end
end
