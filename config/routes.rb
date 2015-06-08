Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :murrobis
  resources :mamums
  resources :surahs
  resources :report_hafalans
  get '/edit/user', to: 'users#edit'
  put '/edit/user', to: 'users#update'
  get '/select_murrabis', to: 'mamums#get_murrobis', as: :select_murrabis

end
