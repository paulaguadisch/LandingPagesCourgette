Rails.application.routes.draw do
  root 'home#index'
  post '/lp1', to: 'home#create', as: 'lp1create'
  post '/lp2', to: 'home#create', as: 'lp2create'
  post '/lp3', to: 'home#create', as: 'lp3create'
  get '/lp1', to: 'home#lp1', as: 'lp1'
  get '/lp2', to: 'home#lp2', as: 'lp2'
  get '/lp3', to: 'home#lp3', as: 'lp3'
end
