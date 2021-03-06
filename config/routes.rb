Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'feed', to: "pages#feed"
  get 'dashboard', to: "pages#dashboard"
  get 'my_players', to: "pages#my_players"
  get 'my_transactions', to: "pages#my_transactions"

  get '/feed' => 'pages#feed', as: :user_root # creates user_root_path

  resources :players, only: [:index, :show] do
    member do
      get 'buy'
      get 'sell'
      post 'purchase'
      post 'selling'
    end
  end

end
