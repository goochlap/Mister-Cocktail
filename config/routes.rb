Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[show index create new destroy] do
    resources :doses, only: %i[new create index]
  end
  resources :doses, only: %i[destroy]
end
