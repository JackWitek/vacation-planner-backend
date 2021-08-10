Rails.application.routes.draw do
  resources :dayys
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
      resources :vacations
      resources :days
    end
  end

  root to: "home#index"

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  delete "signin", controller: :signin, action: :destroy

end