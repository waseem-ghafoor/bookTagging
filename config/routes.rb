Rails.application.routes.draw do
  root to: "books#index"
  resources :books, only: %i[index]
  resources :tags, only: %i[index]
  get 'assign_tags', to: 'tags#assign_tags'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
