Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#dashboard"

  get 'profile', to: 'pages#profile'
  get 'profile/edit', to: 'pages#edit'
  patch 'profile/update', to: 'pages#update'
  get 'dashboard', to: 'pages#dashboard'
  get 'profile/subjects', to: 'pages#subjects', as: 'profilesubjects'

  resources :interested_subjects, only: %i[new create]

  resources :groups do
    member do
      post 'join'
    end
    resources :sessions, except: %i[index]
  end
end
