Rails.application.routes.draw do
  resources :micotters do
    collection do
      post :confirm
    end
  end
end
