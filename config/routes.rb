Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get '/cv', to: 'static#cv', as: 'cv_page'
  # get '/contact', to: 'static#contact', as: 'contact_page'

  resources :photograph, path: :'photography', only: [:index, :new, :destroy, :create, :show, :edit, :update]
  match '/contact', to: 'contact_pages#new', via: 'get'
  resources :contact_pages, path: :'contact', only: [:new, :create]
end
