Rails.application.routes.draw do
  

  devise_for :models
  root 'home#index'	
  resources :articles # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
