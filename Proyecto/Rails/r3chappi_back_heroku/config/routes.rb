Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "administrador#index"
  post "informativo/crear"

  namespace :api do
    namespace :v1 do
      # post 'user_token' => 'user_token#create'
      # Etiquetas
      get '/etiqueta' => 'etiqueta#all'
      get '/etiqueta/:id' => 'etiqueta#find'
      # Noticias
      get '/noticia' => 'noticias#all'
      get '/noticia/:id' => 'noticias#find'
      get '/noticia/:search' => 'noticias#search'
      # usuario
      get '/usuario/:id' => 'usuario#find'
      post '/usuario' => 'usuario#create'
      post '/usuario/:id' => 'usuario#update'
      post '/login' => 'usuario#login'
      # post 'user_token' => 'user_token#create'
    end
  end
end
