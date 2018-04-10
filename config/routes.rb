Rails.application.routes.draw do
  get '/tickets/show/:id', to: 'tickets#show'
  post '/tickets/', to: 'tickets#create'
  patch '/tickets/:id', to: 'tickets#update'
  delete '/tickets/:id', to: 'tickets#destroy'

  get '/events/show/:id', to: 'events#show'
  post '/events/', to: 'events#create'
  patch '/events/:id', to: 'events#update'
  delete '/events/:id', to: 'events#destroy'

  get '7places/show/:id', to: 'places#show'
  post '/places/', to: 'places#create'
  patch '/places/:id', to: 'places#update'
  delete '/places/:id', to: 'places#destroy'

  get '/users/show/:id', to: 'users#show'
  get '/users/more-tickets-bought', to: 'users#more_tickets_bought'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
