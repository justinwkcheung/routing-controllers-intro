Rails.application.routes.draw do

  get '/welcome', to: 'pages#welcome', as: 'welcome'
  get '/about', to: 'pages#about', as: 'about'
  get '/contests', to: 'pages#contest', as: 'contests'
  get '/kitten/:size', to: 'pages#kitten', as: 'kitten'
  get 'kittens/:size', to: 'pages#kittens', as: 'kittens'
  get '/secrets/:magic_word', to: 'pages#secrets', as: 'secrets'

  root 'pages#welcome'

end
