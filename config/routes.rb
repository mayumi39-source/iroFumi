Rails.application.routes.draw do
  devise_for :users
  root to: "color_entries#index"
  resources :color_entries, only: [:index, :new, :create, :edit, :update, :destroy]
end
