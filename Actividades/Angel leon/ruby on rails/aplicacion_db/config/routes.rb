Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'usuario/index'
  get 'usuario/crear'
  post 'usuario/crear_u'
end
