Rails.application.routes.draw do
  # get 'top_page/index'
  root "top_page#index"
  resources :tweets, only: [:index]
end
