Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "home/about" => "homes#about",as: "about"
  resources :users,only:[:new, :show, :edit, :update, :index, :create]
  resources :books,only:[:new, :create, :index, :edit, :destroy, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
