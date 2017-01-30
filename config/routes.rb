Rails.application.routes.draw do

  get '/welcome', to: 'pages#welcome', as: 'welcome'
  get '/', to: 'pages#welcome'

end
