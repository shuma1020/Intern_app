Rails.application.routes.draw do
  get "pages/:id" => "pages#show"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "pages/create" => "pages#create"
  devise_for :users
  root 'pages#index'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
