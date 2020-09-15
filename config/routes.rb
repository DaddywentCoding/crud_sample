Rails.application.routes.draw do
  resources :users
end

# # 一覧画面表示
#   get "/users", to: "users#index"
#   # 新規登録
#   get "/users/new", to: "users#new"
#   # データベースにデータを登録するためのルーティング
#   post "/users", to: "users#create"
#   # 編集ボタンを押した時のルーティング
#   get "/users/:id/edit", to: "users#edit"
#   # 編集完了画面へのルーティング
#   patch "/users/:id", to: "users#update"
#   # 削除ボタンを押した時のルーティング
#   delete "/users/:id", to: "users#destroy"