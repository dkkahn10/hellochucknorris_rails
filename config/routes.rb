Rails.application.routes.draw do
  root 'greetings#index'

  namespace :api, :defaults => { :format => 'json' } do
    resources :greetings, only: [:index, :create]
  end
end
