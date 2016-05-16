Rails.application.routes.draw do
  devise_for :users
  get 'home' => 'home#index'
  get 'projects' => 'projects#index'

  root 'home#index'
end
