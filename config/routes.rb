Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: "users/sessions" }
  root 'home#index'

  get '/edit/user', to: 'users#edit'
  put '/edit/user', to: 'users#update'
  get '/select_murrabis', to: 'mamums#get_murrobis', as: :select_murrabis

  namespace :murrobi do
    get '/', to: 'application#index', as: 'root'
    resources :report_hafalans
  end

  namespace :manage do
    get '/', to: 'application#index', as: 'root'
    resources :murrobis
    resources :mamums
    resources :surahs
    resources :report_hafalans
    resources :news
  end
end
