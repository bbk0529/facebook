Rails.application.routes.draw do
  get 'home/terms'

  get 'home/help'

  devise_for :users
  root 'posts#index'
  #get 'posts/:id/create_comment' => 'posts#create_comment'
  resources :posts do
    member do #posts/:id 이런 것을 앞에 하나 붙여 준다고 생각 #posts/:id/create_comment => 'posts#create_comment'
      get 'create_comment'
      post 'create_comment' => 'posts#create_comment', as: 'create_comment_to'
    end
  end
end
