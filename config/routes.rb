Rails.application.routes.draw do
  namespace :api do
    resources :access_tokens
    resources :app_fields
    resources :app_settings
    resources :apps 
    resources :client_trusted_domains
    resources :clients 
    resources :permissions
    resources :permissions_apps
    resources :permissions_roles
    resources :permissions_users
    resources :posts
    resources :posts_tags
    resources :refresh_tokens
    resources :roles 
    resources :roles_users
    resources :settings 
    resources :subscribers
    resources :tags 
    resources :users  
  end
end
