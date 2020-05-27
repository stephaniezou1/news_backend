Rails.application.routes.draw do
  resources :joiners
  resources :tags
  resources :articles

  # get '/joiners', to: 'joiners#index'
  # post '/joiners', to: 'joiners#create'
  # get '/joiners/:id', to: 'joiners#show', as: 'joiner'
  # get '/joiners/:id/edit', to: 'joiners#edit', as: 'edit_joiner'
  # patch '/joiners/:id', to: 'joiners#update'
  # delete '/joiners/:id', to: 'joiners#destroy'
end