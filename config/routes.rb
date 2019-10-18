Rails.application.routes.draw do
  resources :powers, only:  [:index, :show, :new, :create, :edit]  
  post '/heroines/new', to: 'heroines#new'
  resources :heroines, only: [:index, :show, :new, :create, :edit]  
end
