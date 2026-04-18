Rails.application.routes.draw do
  devise_for :users
  root to: "pages#top"
  get "home", to: "color_entries#index", as: :home
  resources :color_entries, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end