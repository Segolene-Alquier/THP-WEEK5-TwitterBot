Rails.application.routes.draw do
  root 'tweets#new'
  post "/", to: 'tweets#create'
  resources :tweets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
