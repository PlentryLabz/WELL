Thelist::Application.routes.draw do

  resource :wellcome, only: [:show]
  root to: 'wellcome#show'

  resources :lists, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :lists, only: [:index, :create, :update, :destroy] do
        scope module: :lists do
          resources :records, only: [:index, :create, :update, :destroy]
        end
      end

    end
  end
end
