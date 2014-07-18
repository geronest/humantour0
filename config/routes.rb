Humantour0::Application.routes.draw do
  get "users/signup"
  post "users/signup_complete"
  get "users/login"
  post "users/login_complete"
  get "users/logout_complete"
  get "wall/show"
  get "/:category" => 'wall#show_category' 
  get "wall/show_detail/:id" => 'wall#show_detail'
  get "wall/write"
  post "wall/write_complete"
  get "wall/edit/:id" => 'wall#edit'
  post "wall/edit_complete"
  post "wall/feedback"
  get "wall/delete_complete/:id" => 'wall#delete_complete'
  post "wall/write_comment_complete"
  get "wall/delete_comment_complete/:id" => 'wall#delete_comment_complete'
  get "wall/about" => 'wall#about'
  post "users/subscribe_complete"
  get "wall/send_complete/:id" => 'wall#send_complete'
  get "wall/team"
  get "wall/contact"
  root 'wall#intro'
 # get "user_mailer/send_interview/:id" => 'user_mailer#send_interview'

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
