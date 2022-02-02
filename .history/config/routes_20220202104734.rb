Rails.application.routes.draw do
  devise_for :users
  get 'rooms/index'
  root to: "rooms#index" 
  #ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出されるようにします。
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
