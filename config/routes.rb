Rails.application.routes.draw do
  devise_for :companies, controllers: {
  sessions:      'companies/sessions',
  passwords:     'companies/passwords',
  registrations: 'companies/registrations'
  }

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }

  resources :companies, only: [:index, :show]
  resources :offers do
    member do
      get :situation
    end
    resources :comments, only: [:create]
    resources :replies, only: [:create]
    resources :applies, only: [:new, :create]
  end
  resources :users, only: [:index, :show]
  root "offers#index"

end
