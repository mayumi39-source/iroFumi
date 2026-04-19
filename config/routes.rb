Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root to: "pages#top"
  get "home", to: "color_entries#index", as: :home
  get "color_entries/complete", to: "color_entries#complete", as: :complete_color_entry
  get "terms", to: "pages#terms", as: :terms
  get "privacy", to: "pages#privacy", as: :privacy
  resources :color_entries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end