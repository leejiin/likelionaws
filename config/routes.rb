Rails.application.routes.draw do
  devise_for :users
  root 'post#index'
   
  get 'reply/create'
  post 'reply/create'

  get 'reply/destroy'
  get 'reply/destroy/:id' => 'reply#destroy'
  

  get 'post/index'

  get 'post/new'

  get 'post/create'
  post 'post/create' # 이걸 써줘야 받아들일 준비가 된거임

  get 'post/update'
  post 'post/update/:id' => 'post#update'

  get 'post/edit'
  get 'post/edit/:id' => 'post#edit'

  get 'post/destroy'
  get 'post/destroy/:id' => 'post#destroy'

  get 'post/show'
  get 'post/show/:id' => 'post#show' # :은 id가 변수라는 걸 알려주는 구분자 정도로 생각하래 그리고 어디로 보낼지도 정해야해 
  # # 는 포스트 컨트롤러로가는액션이래 새로 변형된 주소는 어디로 보내는지 정해줘야한대
  
  get 'likes/likes_toggle/:id' => 'likes#likes_toggle'
  post 'likes/likes_toggle'
  
  get 'post/ajaxCall' => 'post#ajaxCall'

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
