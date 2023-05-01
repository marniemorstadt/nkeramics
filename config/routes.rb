Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # Generic syntax:
    # verb "path", to: "controller#action"
    root to: "pages#home"
    get "about", to: "pages#about"
    get "contact", to: "pages#contact"
    get "lessons", to: "pages#lessons"
    get "index", to: "offers#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
