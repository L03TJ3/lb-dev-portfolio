Rails.application.routes.draw do
  devise_for :users
  get   'home'                => 'home#index'
  get   'projects'            => 'projects#index'
  get   'projects/new'        => 'projects#new'
  post  'projects'            => 'projects#create'
  get   'projects/:id/edit'   => 'projects#edit',   as: 'projects_edit'
  patch 'projects/:id/update' => 'projects#update', as: 'projects_update'

  root 'home#index'
end
