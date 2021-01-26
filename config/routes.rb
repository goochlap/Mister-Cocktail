Rails.application.routes.draw do
  resources :cocktails, only: %i[show index create new] do
    resources :doses, only: %i[new create index]
  end
  resources :doses, only: %i[destroy]
end
