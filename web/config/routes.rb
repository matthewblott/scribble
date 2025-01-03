Rails.application.routes.draw do
  get  'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get  'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  resources :sessions, only: [:index, :show, :destroy]
  resource  :password, only: [:edit, :update]
  resources :settings, only: :index

  namespace :identity do
    resource :email,              only: [:edit, :update]
    resource :email_verification, only: [:show, :create]
    resource :password_reset,     only: [:new, :edit, :create, :update]
  end

  root('home#index')

  resources(:notes, only: [:create, :new, :destroy, :index])

end
