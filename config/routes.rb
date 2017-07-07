Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.applicationorg/routing.html
  get '/', to: 'page#index'
  get '/page', to: 'page#show', as: 'page'
end
