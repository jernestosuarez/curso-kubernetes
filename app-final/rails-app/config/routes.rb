Rails.application.routes.draw do
  resources :posts
  match '/monitoring/alive', to: 'posts#alive', via: 'get', as: :alive
  match '/monitoring/ready', to: 'posts#ready', via: 'get', as: :ready
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
end
