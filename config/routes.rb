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

  resources :users, only: :show 
  resources :companies, only: [:index, :show]
  resources :offers do
    resources :applies, only: [:new, :create]
  end

  root "offers#index"

end
