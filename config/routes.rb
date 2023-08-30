Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"

  get 'profile', to: 'pages#profile'
  get 'profile/edit', to: 'pages#edit'
  patch 'profile/update', to: 'pages#update'
  get 'dashboard', to: 'pages#dashboard'
  get 'profile/subjects', to: 'pages#subjects', as: 'profilesubjects'


  resources :groups do
  resources :interested_subjects, only: %i[new create]
    resources :sessions, except: %i[index]
  end
  resources :groups do
    member do
      post 'join'
    end
  end
end
