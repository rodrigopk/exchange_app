Rails.application.routes.draw do
  root to: 'exchange#show'

  post '/convert', to: 'exchange#convert'
  
end
