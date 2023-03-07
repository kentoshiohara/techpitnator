Rails.application.routes.draw do
  root to: "games#new"
  resources :games, only:[:new, :create, :update] do
    member do
      get :give_up
      get :challenge
      get :correct
    end
    resource :progresses, only:[:new, :create]
  end
end
