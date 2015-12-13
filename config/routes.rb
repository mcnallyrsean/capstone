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

  # LEAGUE routes
  get '/leagues' => 'leagues#index'
  get '/leagues/new' => 'leagues#new'
  post '/leagues' => 'leagues#create'
  get '/leagues/:id' => 'leagues#show'
  get '/leagues/:id/edit' => 'leagues#edit'
  patch '/leagues/:id' => 'leagues#update'
  delete '/leagues/:id' => 'leagues#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
