Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # Generic syntax:
    # verb "path", to: "controller#action"
    root to: "pages#home"
    get "about", to: "pages#about"
    get "contact", to: "pages#contact"
    get "lessons", to: "pages#lessons"
    get "products", to: "products#index"
    get "products/new", to: "products#new"
    get "products/:id", to: "products#show", as: :product
    post "products", to: "products#create"
    get "products/:id/edit", to: "products#edit", as: :edit_product
    patch "products/:id", to: "products#update"
    delete "products/:id", to: "products#destroy"
  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
end
