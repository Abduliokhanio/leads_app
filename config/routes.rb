Rails.application.routes.draw do
  get 'owners/new'
  get 'owners/create'
  get 'owners/show'
  get 'owners/edit'
  get 'owners/update'
  get 'notes/index'
  get 'notes/new'
  get 'notes/create'
  get 'notes/show'
  get 'notes/edit'
  get 'notes/update'
  get 'notes/destroy'
  get 'leads/index'
  get 'leads/new'
  get 'leads/create'
  get 'leads/show'
  get 'leads/edit'
  get 'leads/update'
  get 'leads/destroy'

  resources :users do 
    resources :leads do 
      resources :notes 
    end
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
