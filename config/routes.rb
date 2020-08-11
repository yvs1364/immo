# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "propertys#index"
  get "blog", to: "pages#blog"
  get "contact", to: "pages#contact"
  get "estimate", to: "pages#estimate"
  get "new", to: "pages#new"
  resources :propertys
  resources :locations
  resources :lots
  resources :actualitys
  resources :nouvelles
end
