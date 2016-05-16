Rails.application.routes.draw do
  devise_for :users
  get 'home' => 'home#index'
  get 'projects' => 'projects#index'
  get 'projects/new' => 'projects#new'
  post 'projects' => 'projects#create'

  root 'home#index'
end
