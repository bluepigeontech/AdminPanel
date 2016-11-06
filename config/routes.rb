Rails.application.routes.draw do
  namespace :project do
    resources :approval_types
  end
  resources :ammenities
  resources :managers
  get 'dynamic_builder_companies' => 'javascripts#dynamic_builder_companies'

  namespace :stage do
    resources :sub_stages
  end
  resources :stages
  namespace :builder do
    namespace :company do
      resources :contact_people
    end
  end
  namespace :builder do
    resources :companies
  end
  resources :taxes
  namespace :flat do
    namespace :ammenity do
      resources :p_hotos
    end
  end
  namespace :floor do
    namespace :ammenity do
      resources :photos
    end
  end
  namespace :building do
    namespace :ammenity do
      resources :photos
    end
  end
  namespace :project do
    namespace :ammenity do
      resources :photos
    end
  end
  namespace :flat do
    namespace :stage do
      resources :sub_stages
    end
  end
  namespace :flat do
    resources :stages
  end
  namespace :floor do
    resources :stages
  end
  namespace :floor do
    namespace :stage do
      resources :sub_stages
    end
  end
  namespace :building do
    namespace :stage do
      resources :sub_stages
    end
  end
  namespace :floor do
    resources :stages
  end
  namespace :building do
    resources :stages
  end
  namespace :project do
    namespace :stage do
      resources :sub_stages
    end
  end
  namespace :project do
    resources :stages
  end
  resources :roles
  namespace :flat do
    resources :photos
  end
  namespace :floor do
    resources :photos
  end
  namespace :building do
    resources :photos
  end
  namespace :project do
    resources :photos
  end
  resources :approval_types
  resources :home_loan_banks
  resources :localities
  resources :cities
  resources :states
  resources :countries
  namespace :flat do
    resources :ammenities
  end
  namespace :floor do
    resources :ammenities
  end
  namespace :building do
    resources :ammenities
  end
  namespace :project do
    resources :ammenities
  end
  resources :flats
  resources :floors
  resources :buildings
  resources :leads
  resources :users
  resources :buyers
  resources :builders
  resources :projects
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'panel#login'

  # Example of regular route:
  get 'dashboard/' => 'panel#dashboard'
  get 'login/' => 'panel#login'
  get 'logout/' => 'panel#logout'
  post 'verify_user/' => 'panel#verify_user'
  post 'register_user/' => 'panel#register_user'
  get 'register/' => 'panel#register'

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
