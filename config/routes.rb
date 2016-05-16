Rails.application.routes.draw do
  get 'home' => 'home#index'
  get 'projects' => 'projects#index'

  root 'home#index'
end
