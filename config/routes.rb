Rails.application.routes.draw do
  resources :top, only: :index
end
