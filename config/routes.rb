Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
  # Same as
  # get "/", to: "pages#home"


  # verb path    controller#action
  # get("about", { to: "pages#about" })
  get "about",  to: "pages#about", as: :about
  # get "home", to: "pages#home"
  get "contact", to: "pages#contact", as: :contact
end
