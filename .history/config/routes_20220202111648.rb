Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index" 
  #ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出されるようにします。
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
    #まず、メッセージ送信機能に必要なindexとcreateのルーティングを記述します。メッセージを投稿する際には、どのルームで投稿されたメッセージなのかをパスから判断できるようにしたいので、ルーティングのネストを利用します。今回の場合、ネストをすることにより、roomsが親で、messagesが子という親子関係になるので、チャットルームに属しているメッセージという意味になります。これによって、メッセージに結びつくルームのidの情報を含んだパスを、受け取れるようになります。
end
