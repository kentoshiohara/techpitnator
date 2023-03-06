Rails.application.routes.draw do
  root to: "games#new"
  resources :games, only:[:new, :create] do
    resource :progresses, only:[:new, :create]
  end
end
