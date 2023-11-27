Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"

  resources :books, only: %i[index]
end
