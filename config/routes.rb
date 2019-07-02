Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :companies do
    resources :complaints, only: :create
  end
  get 'modal_edit', to: 'companies#modal_edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "companies#index"
end
