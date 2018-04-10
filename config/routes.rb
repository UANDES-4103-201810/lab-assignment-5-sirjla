Rails.application.routes.draw do
  get '/tickets/show/:id', to: 'tickets#show'
  post '/tickets/', to: 'tickets#create'
  patch '/tickets/update/:id', to: 'tickets#update'
  delete '/tickets/destroy/:id', to: 'tickets#destroy'

  get '/events/show/:id', to: 'events#show'
  post '/events/', to: 'events#create'
  patch '/events/update/:id', to: 'events#update'
  delete '/events/destroy/:id', to: 'events#destroy'

  get '7places/show/:id', to: 'places#show'
  post '/places/', to: 'places#create'
  patch '/places/update/:id', to: 'places#update'
  delete '/places/destroy/:id', to: 'places#destroy'

  get '/users/show/:id', to: 'users#show'
  get '/users/more-tickets-bought', to: 'users#more_tickets_bought'
  match '/users', to: 'users#create', via: [:post]
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
