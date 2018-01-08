Rails.application.routes.draw do
  get 'test/index'

  get 'picker_data/generate'

  get 'summary/index'

  get 'data/index'
  get 'data/registers' => 'data#getRegisters'
  get 'data/description' => 'data#description'
  get 'data/fields' => 'data#fields'
  get 'data/preview' => 'data#preview'
  get 'data/download' => 'data#download'
  get 'data/downloadZip' => 'data#downloadZip'
  get 'data/confirmation' => 'data#confirmation'
  get 'data/summary' => 'data#summary'
  post 'data/save_description', to: 'data#save_description'
  post 'data/saveField', to: 'data#saveField'

  root 'data#index'

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
