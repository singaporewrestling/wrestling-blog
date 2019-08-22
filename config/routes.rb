Rails.application.routes.draw do
  namespace :api do
    resources :posts
    resources :posts_tags
    resources :tags 
    resources :users  
  end
end
