Rails.application.routes.draw do
  root to: "pages#home"
  resources :articles, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    collection do
      get :top
    end
  end
end
