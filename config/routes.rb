Rails.application.routes.draw do
  root to: "pages#home"

  get 'profile', to: 'pages#profile'
  get 'profile/edit', to: 'pages#edit'
  patch 'profile/update', to: 'pages#update'
  get 'dashboard', to: 'pages#dashboard'
  get 'profile/subjects', to: 'pages#subjects', as: 'profilesubjects'
  get 'search', to: 'pages#search'
  get '/groups/:id/join', to: 'groups#join', as: 'join_group'
  get 'attendances', to: 'sessions#index'
  delete 'attendances/:id', to: 'attendances#destroy', as: 'attendancedestroy'

  #get 'show', to: 'sessions#show'
  #post 'create', to: 'sessions#create'
  #get 'new', to: 'sessions#new'

  resources :sessions, only: %i[show create new destroy edit ] do
    resources :attendances, only: %i[create]
    resources :attendances, only: %i[create]
  end

  resources :memberships, only: %i[destroy]
  resources :attendances, only: %i[update]

  resources :interested_subjects, only: %i[new create]
  #resources :sessions, only: %i[new create]

  resources :groups do
    member do
      post 'join'
    end

    resources :sessions, except: %i[index show new create edit] do
      member do
        post 'join'
      end
    end
  end

  devise_for :users
end
