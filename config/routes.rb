Rails.application.routes.draw do
  get 'main/home'
  resources :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
