Rails.application.routes.draw do
  root 'teams#index'

  resources :teams, only: [:index, :new, :create] do
    resources :retrospectives do
      resources :demands do
        get 'update_status', on: :member
      end
      resources :doubts do
        member do
          post :like
          delete :remove_like

          post :dislike
          delete :remove_dislike
        end
      end
      resources :positive_topics
      resources :negative_topics
    end
  end

  resources :topics do
    member do
      post :like
      delete :remove_like

      post :dislike
      delete :remove_dislike
    end
  end
end
