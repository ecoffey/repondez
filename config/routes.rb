Repondez::Application.routes.draw do
  root :to => 'home#index'

  devise_for :admins, :path => 'admin'
  namespace 'admin' do
    resources :responses
  end

  resources :responses, :only => [:new, :create]

  get '/rsvp', to: 'responses#new'
  post '/rsvp', to: 'responses#create'

  get '/thank_you', to: 'home#thank_you'
end
