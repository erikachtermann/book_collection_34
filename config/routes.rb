# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books do
    member do
      get :delete
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'books#index'

  #  get 'main/index'
  #  get 'books/index'
  #  get 'books/new'
  #  get 'books/edit'
  #  get 'books/show'
  #  get 'books/delete'
end
