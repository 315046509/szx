Travel::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root :to => "main#index"
  match '/login' => 'main#login', :via => :get
  match '/logout' => 'main#logout', :via => :get
  match '/signup' => 'main#signup', :via => :get
  resources :main do
    member do
      get 'show_tejia'
      get 'show_rm'
      get 'show_classic'
      get 'show_chujing'
      get 'show_domestic'
      get 'show_raider'
      get 'visa_show'
    end
    collection do
      post 'user_create'
      post 'login_check'
      get 'check_login'
      get 'visa'
    end
  end
  resources :destination_one do
    member do
      get 'gangao'
      get 'gentuan'
      get 'ziyouxing'
    end
  end
  resources :destination_two do
    member do
      get 'gangao'
      get 'gentuan'
      get 'ziyouxing'
    end
  end
  resources :destination_three do
    member do
      get 'gangao'
      get 'gentuan'
      get 'ziyouxing'
    end
  end
  resources :destination_four do
    member do
      get 'gangao'
      get 'gentuan'
      get 'ziyouxing'
    end
  end
  # 公司旅游
  resources :destination_five do
    collection do
      post 'user_create'
    end
  end

  # 泰国旅游
  resources :destination_six

  # 香港印象
  resources :destination_seven

  # 酒店管理
  resources :destination_eight do
    member do
      get 'gangao'
      get 'gentuan'
      get 'ziyouxing'
    end
  end
  # 旅游路线
  resources :cities do
    collection do
      get 'xianggang'
      get 'aomen'
      get 'gangao'
      get 'feizhou'
      get 'remenchujing'
      get 'remenhaidao'
      get 'dongnanya'
      get 'yazhou'
      get 'ouzhou'
      get 'meizhou'
      get 'zhongdongfeizhou'
      get 'aozhou'
      get 'remenguonei'
      get 'huanan'
      get 'xinan'
      get 'huadong'
      get 'huazhong'
      get 'huabei'
      get 'xibu'
      get 'dongbei'
      get 'changchun'
    end
  end
  # admin
  namespace :admin do
    match '' => 'accounts#index', :via => :get
    match '/login' => 'main#login', :via => :get
    match '/logout' => 'main#logout', :via => :get
    resources :main do
      collection do
        post 'check_login'
      end
    end

    # 会员管理
    resources :accounts do
      collection do
        post 'update_multiple'
      end
    end

    # 最新公告
    resources :announcements

    # 攻略
    resources :raiders

    # 导航栏一
    resources :one_cities do
      # 出境
      resources :exithots
      # 国内
      resources :domestics
      # 海外经典板块
      resources :jingdians
      # 热门
      resources :hotdoors
    end

    # 导航栏二
    resources :citys do
      # 特价
      resources :tejia
      # 攻略
      resources :raiders
      # 推荐
      resources :recommends
      # 跟团
      resources :gentuans
      # 跟团
      resources :freelines
    end

    # 导航栏三
    resources :three_cities do
      # 特价
      resources :three_tejia
      # 攻略
      resources :three_raiders
      # 推荐
      resources :three_recommends
      # 跟团
      resources :three_gentuans
      # 跟团
      resources :three_freelines
    end
    # 公司旅游
    resources :companies do
      collection do
        get 'hotline'
        get 'customized_packages'
      end
    end
    # 泰国旅游
    resources :taiguos

    # 酒店
    resources :hotels do
      # 酒店
      resources :occupancy_hotels
    end

    # 签证
    resources :visas

    # 旅游管理
    resources :addcities do
      # 旅游路线
      resources :addtravels
    end
  end
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
