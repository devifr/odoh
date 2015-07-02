Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: "users/sessions" }
  root 'home#index'

  resources :murrobis
  resources :mamums
  resources :surahs
  resources :report_hafalans
  resources :news
  get '/edit/user', to: 'users#edit'
  put '/edit/user', to: 'users#update'
  get '/select_murrabis', to: 'mamums#get_murrobis', as: :select_murrabis
  namespace :murrobi do
    get '/', to: 'murrobi#index', as: 'root'
    resources :report_hafalans
  end

end
