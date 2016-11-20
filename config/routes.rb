Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'routes#index'

get 'routes/new', to: 'routes#new'
post '/routes', to: 'routes#create'

get '/routes/:id', to: 'routes#show'

get '/routes/:id/edit', to: 'routes#edit'
patch '/routes/:id', to: 'routes#update'

delete '/routes/:id', to: 'routes#destroy'


end
