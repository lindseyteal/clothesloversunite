Rails.application.routes.draw do
  
  root to: "pages#home"
  get '/pages/contact', to: 'pages#contact'

  resources :profiles
  # get 'pages/home' to: 'pages#home'
  get '/profiles/:id/edit', to: 'profiles#edit'
  get '/profiles/:id', to: 'profiles#show'

  devise_for :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :clothings
  get '/clothings', to: 'clothings#index'
  post '/clothings', to: 'clothings#create'

  resources :clothings do
    member do
      post 'charge'
    end
  end
  
end

