Rails.application.routes.draw do
  resources :project_informations
  resources :reports do
    resources :report_wizard, controller: 'reports/report_wizard'
  end
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
