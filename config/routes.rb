Rails.application.routes.draw do
  get 'avatars/create'
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
end
