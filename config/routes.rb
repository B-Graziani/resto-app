Rails.application.routes.draw do
  root to: "pages#home"
  resources :articles, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    collection do
      get :top
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
