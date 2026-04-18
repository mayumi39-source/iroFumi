Rails.application.routes.draw do
  devise_for :users
  root to: "pages#top"
  get "home", to: "color_entries#index", as: :home
  get "color_entries/complete", to: "color_entries#complete", as: :complete_color_entry
  resources :color_entries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end