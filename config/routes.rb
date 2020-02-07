Rails.application.routes.draw do
  resources :favourites
  resources :tvshows do
    get :mark_favourite, on: :member
    get :unmark_favourite, on: :member
  end
  resources :channels
  resources :homes
  devise_for :users

  root "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
