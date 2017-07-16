Rails.application.routes.draw do
  root 'pharms#index'
  devise_for :users
  resources :pharms do
    resources :gardes
  end
  resources :towns

  namespace :api do
    namespace :v1 do
      resources:pharms
    end  
  end



end
