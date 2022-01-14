Rails.application.routes.draw do

  root to: 'pages#home'

  get 'experiences/new'
  get 'experiences/create'
  get 'experiences/delete'
  get 'experiences/update'
  get 'experiences/download_pdf'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
