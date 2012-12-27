RailsPages::Engine.routes.draw do
  get '/*id' => 'pages#show', as: 'page'
end
