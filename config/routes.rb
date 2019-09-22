Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'pages/index'

  get 'posts/index'
  post 'posts/index', to: 'posts#create'
  post 'post.:id', to: 'posts#vote'

  resource :post, only: [:show, :index]

  root 'posts#index'
end
