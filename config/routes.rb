Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, only: %i( new create show edit update )
  resources :sessions, only: %i( new create destroy )
  resources :photos do
    collection do
      post :confirm
    end
  end
end