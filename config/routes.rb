Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: "articles#index"  #articles controller, index action (method)
  # get "/articles", to: "articles#index"     # get articles, routing to index action (method)
  # get "/articles/:id", to: "articles#show"  # get article by id, routing to show action (method)
  
  get "up" => "rails/health#show", as: :rails_health_check
  
  resources :articles do
    resources :comments
  # Defines the root path route ("/")
  # root "posts#index"
  end
end
