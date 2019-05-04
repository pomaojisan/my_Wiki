Rails.application.routes.draw do
  get 'posts/new', to: 'posts#show'
  post 'posts/new', to: 'posts#create'
end
