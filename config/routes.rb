Rails.application.routes.draw do
  get 'color_entries/index'
  get 'color_entries/new'
  get 'color_entries/create'
  get 'color_entries/edit'
  get 'color_entries/update'
  get 'color_entries/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
