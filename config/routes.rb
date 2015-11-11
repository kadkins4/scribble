Rails.application.routes.draw do
  root to: "posts#index"
  resources :categories
  resources :posts do
    resources :comments
    resources :tags, only: [:new, :create]
  end
end