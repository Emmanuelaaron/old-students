Rails.application.routes.draw do
  resources :alumnis, only: [:new, :create, :edit, :update, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "alumnis#new"
end
