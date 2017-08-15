Rails.application.routes.draw do

	concern :commentable do 
		resources :comments
	end
  # get 'questions/index'

  # get 'questions/show'

  # get 'questions/new'

  # get 'questions/edit'

  # post 'questions/create'

  root :to => "questions#index"
resources :comments
  resources :questions, concerns: :commentable do
  	resources :answers, concerns: :commentable
  end


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'home#index'
end
