Rails.application.routes.draw do
  root 'pharms#index'
  devise_for :users
  resources :pharms
  resources :towns

  namespace :api do
    namespace :v1 do
      resources:pharms
    end  
  end



end
