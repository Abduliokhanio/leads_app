Rails.application.routes.draw do

  resources :owners do 
    resources :leads do 
      resources :notes 
    end
  end 

  resources :leads, only: [:index]
  root to: "leads#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
