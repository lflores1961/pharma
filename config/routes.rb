Rails.application.routes.draw do
  get 'body_mass_index/calculator'

  resources :catalogos

  root 'static_pages#hogar'
  # get 'static_pages/inicio', as: :inicio
  get 'static_pages/inicio', as: 'inicio'

  get 'static_pages/productos', as: :productos

  get 'static_pages/contacto', as: :contacto


  resources :posts
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store' => 'store#index'

  # root 'store#index', as: 'store_index'

  resources :products do
    get :who_bought, on: :member
  end
  get 'buscar' => 'products#buscar'
  get 'tabla_nut/:id' => 'products#tabla_nut', as: 'tabla_nut'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
