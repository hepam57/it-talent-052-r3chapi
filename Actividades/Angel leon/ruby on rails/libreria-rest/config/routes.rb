Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "libro/libro"
  get "libro/get_libros"
  get "libro/ver_libros"
  post "libro/crear_libro"
  get "libro/c_libro_beta"
  

end
