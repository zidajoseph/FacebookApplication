Rails.application.routes.draw do
  resources :blogs
  resources :posts
  get '/', to: 'posts#index'
  resources :posts do
    collection do
      post :confirm
    end
  end
end
