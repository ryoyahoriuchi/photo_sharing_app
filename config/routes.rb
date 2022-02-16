Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, only: %i( new create show edit update )
  resources :sessions, only: %i( new create destroy )
  resources :favorites, only: %i( create destroy show )
  resources :photos do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end