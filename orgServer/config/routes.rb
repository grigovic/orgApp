Rails.application.routes.draw do
  resources :tasks
  resources :reports
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
