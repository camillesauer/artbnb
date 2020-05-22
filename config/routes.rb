Rails.application.routes.draw do
  devise_for :users
  #On veut que la racine du site se soit artworks-index
  root to: 'artworks#index'
  resources :artworks do
  	resources :rentals, only: [:new, :create, :delete] # show ?
    collection do
      get :my_artworks
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rentals, only: [:index] do
    member do
    patch "accept_rentals", to: "rentals#accept_rentals"
    patch "decline_rentals", to: "rentals#decline_rentals"
    end
  end
end
