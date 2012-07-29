Repondez::Application.routes.draw do
  root :to => 'home#index'

  devise_for :admins, :path => 'admin'

  scope '/admin/' do
    resources :invites
  end

  get '/rsvp', to: 'responses#new'
  put '/respond', to: 'responses#update'

  get '/thank_you', to: 'home#thank_you'
end
