MakerSource::Application.routes.draw do
  authenticated :user do
    root :to => 'projects#index'
  end
  root :to => "projects#index"
  devise_for :users
    
    match '/users/:user_id/messages/inbox(/:id(.:format))', :controller => 'messages', :action => 'inbox', :via => [:get], :as => 'user_messages_inbox'
    match '/users/:user_id/messages/drafts(/:id(.:format))', :controller => 'messages', :action => 'drafts', :via => [:get], :as => 'user_messages_drafts'
    match '/users/:user_id/messages/sent(/:id(.:format))', :controller => 'messages', :action => 'sent', :via => [:get], :as => 'user_messages_sent'
    match '/users/:user_id/messages/archive(/:id(.:format))', :controller => 'messages', :action => 'archive', :via => [:get], :as => 'user_messages_archive'
    match '/users/:user_id/messages/trash(/:id(.:format))', :controller => 'messages', :action => 'trash', :via => [:get], :as => 'user_messages_trash'
    
    resources :users do
        resources :messages
        resources :contacts
    end
    resources :projects
end