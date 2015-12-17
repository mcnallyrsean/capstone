Rails.application.routes.draw do
  devise_for :users
  
  root 'pages#home'

  # BAR routes
  get '/bars' => 'bars#index'
  get '/bars/new' => 'bars#new'
  post '/bars' => 'bars#create'
  get '/bars/:id' => 'bars#show'
  get '/bars/:id/edit' => 'bars#edit'
  patch '/bars/:id' => 'bars#update'
  delete '/bars/:id' => 'bars#destroy'

  # CHECK IN routes
  get '/check_ins' => 'check_ins#index'
  get '/check_ins/new' => 'check_ins#new'
  post '/check_ins' => 'check_ins#create'
  get '/check_ins/:id' => 'check_ins#show'
  get '/check_ins/:id/edit' => 'check_ins#edit'
  patch '/check_ins/:id' => 'check_ins#update'
  delete '/check_ins/:id' => 'check_ins#destroy'

  # GAME routes
  get '/games' => 'games#index'
  get '/games/new' => 'games#new'
  post '/games' => 'games#create'
  get '/games/:id' => 'games#show'
  get '/games/:id/edit' => 'games#edit'
  patch '/games/:id' => 'games#update'
  delete '/games/:id' => 'games#destroy'

  # IMAGES routes
  get '/images' => 'images#index'
  get '/images/new' => 'images#new'
  post '/images' => 'images#create'
  get '/images/:id' => 'images#show'
  get '/images/:id/edit' => 'images#edit'
  patch '/images/:id' => 'images#update'
  delete '/images/:id' => 'images#destroy'

  # TEAM routes
  get '/teams' => 'teams#index'
  get '/teams/new' => 'teams#new'
  post '/teams' => 'teams#create'
  get '/teams/:id' => 'teams#show'
  get '/teams/:id/edit' => 'teams#edit'
  patch '/teams/:id' => 'teams#update'
  delete '/teams/:id' => 'teams#destroy'

  # LEAGUE routes
  get '/leagues' => 'leagues#index'
  get '/leagues/new' => 'leagues#new'
  post '/leagues' => 'leagues#create'
  get '/leagues/:id' => 'leagues#show'
  get '/leagues/:id/edit' => 'leagues#edit'
  patch '/leagues/:id' => 'leagues#update'
  delete '/leagues/:id' => 'leagues#destroy'

  # SPORT routes
  get '/sports' => 'sports#index'
  get '/sports/new' => 'sports#new'
  post '/sports' => 'sports#create'
  get '/sports/:id' => 'sports#show'
  get '/sports/:id/edit' => 'sports#edit'
  patch '/sports/:id' => 'sports#update'
  delete '/sports/:id' => 'sports#destroy'

end
