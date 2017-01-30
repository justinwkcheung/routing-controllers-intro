Rails.application.routes.draw do

  get '/welcome', to: 'pages#welcome', as: 'welcome'
  get '/', to: 'pages#welcome'
  get '/about', to: 'pages#about', as: 'about'
  get '/contests', to: 'pages#contest', as: 'contests'
  get '/kitten/:size/:size', to: 'pages#kitten'
  get 'kittens/:size/:size', to: 'pages#kittens'
  get '/secrets/:magic_word', to: 'pages#secrets'

end
