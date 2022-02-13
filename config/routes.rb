Rails.application.routes.draw do
  resources :photos do
    collection do
      post :confirm
    end
  end
end
