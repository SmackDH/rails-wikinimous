Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root
  root to: 'articles#index'
  #all
  get 'articles', to: 'articles#index', as: :articles
  #create
  get '/articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create'
  #show
  get 'articles/:id', to: 'articles#show', as: :article
  #edit/update
  get 'articles/:id/edit', to: 'articles#edit', as: :edit
  patch 'articles/:id', to: 'articles#update'
  #delete
  delete 'articles/:id', to: 'articles#destroy'
end
