Rails.application.routes.draw do
  devise_for :users, :path => 'accounts'

  get 'users/edit'

  get 'users/update'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/list'

  get 'users/update'

  get 'users/show'

  get 'widgets/help'

  get 'widgets/help'

  get 'pages/about'

  get 'pages/about'

  # devise_for :users, :path => 'accounts' do
  #   get '/sign_out' => 'devise/sessions#destroy'
  #   get '/log_in' => 'devise/sessions#new'
  #   get '/log_out' => 'devise/sessions#destroy'
  #   get '/sign_up' => 'devise/registrations#new'
  # end



  resources :posts
  resources :post

  resources :users
  #
  # resources :users do
  #   resources :posts
  # end

  get '/myprojects' => 'posts#list'

  get '/settings' => 'users#edit'

  get 'profile' => 'users#show'
  resources :widgets

  #additional files were added
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'post' => 'post#new'
  post '/post' => 'post#create'
  patch 'update' => 'users#up'

  get 'posts' => 'post#new'
  post '/posts' => 'post#create'


  authenticated :user do
    root to: 'posts#index'
  end
  unauthenticated :user do
    root to: 'welcome#index' , as: 'home'
  end
  
  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end

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
