Repondez::Application.routes.draw do
  root :to => 'home#index'

  devise_for :admins, :path => 'admin'

  namespace 'admin' do
    resources :responses
  end

  resources :responses, :only => [:new, :create]
  get '/responses', to: 'responses#new'

  get '/rsvp', to: 'responses#new'
  post '/rsvp', to: 'responses#create'

  get '/thank_you', to: 'home#thank_you'

  get '/registry', to: 'home#registry'
  get '/where_to_stay', to: 'home#where_to_stay'
  get '/how_to_get_here', to: 'home#how_to_get_here'
end
