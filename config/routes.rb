Rails.application.routes.draw do
  # get 'questions/index'

  # get 'questions/show'

  # get 'questions/new'

  # get 'questions/edit'

  # post 'questions/create'

  resources :questions

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'home#index'
end
