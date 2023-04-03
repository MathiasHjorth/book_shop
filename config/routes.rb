Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"

  #http method, "url", "controller#method", "route verb"
  get "/about", to: "pages#about", as: "about"



  resources :authors do
    resources :books
  end

  resources :books

  resources :categories

end
