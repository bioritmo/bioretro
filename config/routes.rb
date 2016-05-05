Rails.application.routes.draw do
  root 'teams#index'

  resources :teams, only: [:index] do
    resources :retrospectives do
      resources :demands
      resources :doubts
      resources :positive_topics
      resources :negative_topics
    end
  end

  resources :topics do
    member do
      post :like
      post :dislike
    end
  end

  resources :demands do
    member do
      get 'update_status'
    end
  end
end
