Repondez::Application.routes.draw do
  root :to => 'home#index'

  devise_for :admins, :path => 'admin'

  scope '/admin/' do
    post 'invites/bulk_send_invites', :to => 'invites#bulk_send_invites'

    resources :invites
  end

  get '/rsvp', to: 'responses#new'
  put '/respond', to: 'responses#update'

  get '/thank_you', to: 'home#thank_you'
end
