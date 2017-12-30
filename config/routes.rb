Rails.application.routes.draw do
  get 'sessions/new'

  get 'admins/new'

  root 'static_pages#home'

  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  get 'help', to: 'static_pages#help'

  get  '/signup',  to: 'admins#new'
  post '/signup',  to: 'admins#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :admins
  resources :shows
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
