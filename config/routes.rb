Rails.application.routes.draw do
  root to: "games#new"
  resources :games, only:[:new, :create] do
    member do
      get :give_up
    end
    resource :progresses, only:[:new, :create]
  end
end
