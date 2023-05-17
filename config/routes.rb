Rails.application.routes.draw do

  root "pages#home"

  #http method, "url", "controller#method", "route verb"
  get "/about", to: "pages#about", as: "about"



  resources :authors do
    resources :books
  end

  resources :books

  resources :categories

end
