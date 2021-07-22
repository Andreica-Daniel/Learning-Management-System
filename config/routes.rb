Rails.application.routes.draw do
  resources :schools
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  devise_for :users, controllers: { sessions: 'users/sessions' , registrations: 'users/registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
