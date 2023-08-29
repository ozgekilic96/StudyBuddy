Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'profile', to: 'pages#profile'
  get 'profile/edit', to: 'pages#edit'
  patch 'profile/update', to: 'pages#update'
  get 'dashboard', to: 'pages#dashboard'

  resources :groups, except: %i[index] do
    resources :sessions, except: %i[index]
  end
end
