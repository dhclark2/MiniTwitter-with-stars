Rails.application.routes.draw do
  resources :tweets do
    member do
      get :starvote
      get :upvote
      get :downvote
    end
  end

  root "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
