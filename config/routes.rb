Rails.application.routes.draw do
  root 'home#index'

  get '/about', to: 'home#about'

  resources :customer_services, expect: %i[create edit] do
    collection do
      post '/initiate', to: 'customer_services#initiate'
      # post '/refine', to: 'customer_services#refine'
    end
  end
end
