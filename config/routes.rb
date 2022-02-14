Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: %i( new create show edit )
  resources :sessions, only: %i( new create destroy )
  resources :photos do
    collection do
      post :confirm
    end
  end
end
