AccountManager::Application.routes.draw do
  resources :accounts do
    resources :transfers, only: [:index, :create]
  end
end

