Rails.application.routes.draw do
  get 'cocktails/index'

  get 'cocktails/show'

  get 'cocktails/new'

  get 'cocktails/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create, :destroy ]
    root "cocktails#index"
  end
end
