Rails.application.routes.draw do
  # get 'concerts/index'

  # get 'concerts/show'

  # get 'concerts/create'

  # get 'concerts/new'

resources :concerts, only: [:index, :show, :create, :new]
  
end
