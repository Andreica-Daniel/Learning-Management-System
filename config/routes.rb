Rails.application.routes.draw do
  resources :attachments
  resources :essay_solutions
  resources :essays
  resources :lessons
  resources :resources
  resources :users_courses
  resources :courses
  resources :schools
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'users/adding/adding_manually'
  get 'users/adding/save_users'
  get 'home/show_users'
  get 'users/adding/import_users'
  get 'users/adding/adding_csv'
  devise_for :users, controllers: { sessions: 'users/sessions' , registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
