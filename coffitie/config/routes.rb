Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :drinks, only: [:new, :create, :index, :destroy]
  resources :places, only: [:index, :show, :new, :create] do
    resources :prices, only: [:create, :destroy]
  end
end
