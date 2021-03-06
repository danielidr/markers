Rails.application.routes.draw do
  resources :types
  resources :markers
  resources :categories

  root to: 'markers#index'

  namespace :api do
    namespace :v1 do
      get 'info', to: 'bookmarker#info'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
