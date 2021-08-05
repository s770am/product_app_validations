Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  resource :sessions, only: %i(new create destroy)
  resource :users, only: %i(new create update edit)
  resources :products do
    resources :reviews, except: [:update, :edit, :index, :show]
    end
end
