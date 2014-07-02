Thelist::Application.routes.draw do

  resource :wellcome, only: [:show]
  root to: 'wellcome#show'
end
