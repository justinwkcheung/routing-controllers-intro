Rails.application.routes.draw do

  get '/welcome', to: 'pages#welcome', as: 'welcome'
  get '/', to: 'pages#welcome'
  get '/about', to: 'pages#about', as: 'about'
  get '/contests', to: 'pages#contest', as: 'contests'

end
