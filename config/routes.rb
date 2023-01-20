Rails.application.routes.draw do
  resources :books
  root :to => 'homes#top'
  get 'books' => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # post 'lists' => 'lists#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
