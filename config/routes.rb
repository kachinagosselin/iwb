MakerSource::Application.routes.draw do
  authenticated :user do
    root :to => 'projects#index'
  end
  root :to => "projects#index"
  devise_for :users
  resources :users
  resources :projects
end