Rails.application.routes.draw do
  devise_for :users

  resources :players
  resources :partidos do
    resources :players_lists do
      resources :lineups
    end
  end
  get '/json/getplayers', to: 'players_lists#get_players_json'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
