Repondez::Application.routes.draw do
  root :to => 'home#index'

  devise_for :admins, :path => 'admin'

  scope '/admin/' do
    resources :invites
  end

  put '/responses', controller: 'responses', action: 'update'
end
