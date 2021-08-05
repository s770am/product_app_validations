Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  resources :products do
    resources :reviews, except: [:update, :edit, :index, :show]
    resource :users, only %i(new create update edit)
    end
end
