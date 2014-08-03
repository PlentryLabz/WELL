Thelist::Application.routes.draw do

  resource :wellcome, only: [:show]
  root to: 'wellcome#show'

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :lists, except: [:new, :edit] do
        scope module: :lists do
          resources :records, except: [:new, :edit]
        end
      end
      resources :users, except: [:new, :edit]

    end
  end
end
