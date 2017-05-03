Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :albums do
    member do
      put :add_to_cart
    end
  end
  resources :carts, only: [:index] do
    collection do
      put :empty
      get :checkout
    end
  end 
  resources :genres,    only: [:index, :show]
  resources :purchases, only: [:destroy]

  root :to => 'albums#index'
end
