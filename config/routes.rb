Rails.application.routes.draw do
  devise_for :users
  root 'home#main'
  
  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
  get 'deta/deta_index'
  post '/deta_write' => 'deta#deta_write'
  get '/deta_list' => 'deta#deta_list'
  get '/deta_show/:post_id' => 'deta#deta_show'
  get '/deta_edit/:post_id' => 'deta#deta_edit'
  post '/deta_update/:post_id' => 'deta#deta_update'
  get '/deta_destroy/:post_id' => 'deta#deta_destroy'
  
  post '/detareplywrite' => 'deta#detareply_write'
  get '/detareplydestroy/:id' => 'deta#detareply_destroy'
  
   
  get '/mynote' => 'mypage#mynote'

  post "deta_post/:post_id/like" => "likes#like_toggle"
  
  get 'complain/index'
  get '/complain/list' => 'complain#list'
  post '/complain/write' => 'complain#write'
  get '/complain/show/:id' => 'complain#show'
  get '/destroy/:id' => 'complain#destroy'
  get '/edit/:id' => 'complain#edit'
  post '/complain/update/:id' => 'complain#update'
  post '/reply_write' => 'complain#reply_write'
  get '/mynote' => 'mypage#mynote'
   get '/mynotetwo' => 'mypage#mynotetwo'

  get 'likes/show'
  get '/mypage/mbox'
  post 'conversations/:create', to: 'conversations#:create', :defaults => { :format => 'js' }

  get '/index' => 'home#main'
  get '/sabaksa' => 'home#sabaksa'
  get '/bloghomeone' => 'home#bloghomeone'
  get '/bloghometwo' => 'home#bloghometwo'
  get '/blogpost' => 'home#blogpost'
  get '/contact' => 'home#contact'
  get '/faq' => 'home#faq'
  get '/fullwidth' => 'home#fullwidth'
  get '/portfolioonecol' => 'home#portfolioonecol'
  get '/portfoliotwocol' => 'home#portfoliotwocol'
  get '/portfoliothreecol' => 'home#portfoliothreecol'
  get '/portfoliofourcol' => 'home#portfoliofourcol'
  get '/portfolioitem' => 'home#portfolioitem'
  get '/pricing' => 'home#pricing'
  get '/services' => 'home#services'
  get '/sidebar' => 'home#sidebar'
  get '/about' => 'home#about'
  
  
  

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
