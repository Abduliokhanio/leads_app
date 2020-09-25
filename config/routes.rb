Rails.application.routes.draw do

  devise_for :owners
  resources :owners do 
    resources :leads do 
      resources :notes 
    end
  end 

  resources :leads, only: [:index]
  
  #root :to => redirect("/owners/sign_in")

  devise_scope :owners do
    authenticated :owners do
      root to: 'leads#index', as: :authenticated_root
    end
  
    unauthenticated do
      root :to => redirect("/owners/sign_in"), as: :unauthenticated_root
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
