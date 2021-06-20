Rails.application.routes.draw do
  resources :cellars
  resources :incidents
  resources :connections
  resources :flows
  resources :backgrounds
  resources :reports, except: [:edit] do
    resources :report_wizard, controller: 'reports/report_wizard'
  end
  devise_for :users
  resources :users, only: [:index]
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
