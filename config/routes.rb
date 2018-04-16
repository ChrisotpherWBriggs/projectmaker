Rails.application.routes.draw do
  resources :documents
  resources :products
  resources :tasks
  resources :projects
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'projects#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
