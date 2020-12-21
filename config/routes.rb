Rails.application.routes.draw do
  root 'products#index' 
  # get 'product/index'
  # get 'product/create'
  # get 'product/new', to: 'products#new', as: 'new_product'
  # get 'product/show'
  resources "products"

  # res
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 # reqtype routename controller alias
