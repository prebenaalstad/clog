Rails.application.routes.draw do
  get 'users/get_by_user_id'
  get '/search', to: 'entries#search'
  devise_for :users
  resources :entries
  root 'entries#index'
end
