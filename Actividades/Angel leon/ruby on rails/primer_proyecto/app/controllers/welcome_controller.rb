class WelcomeController < ApplicationController
  def index
  end

  def get_persona
    render json: {
      nombre: "Juan Antonio",
      apellido: "Peréz Orjuela"
    }
  end
  
  def vista_nueva
  end



end
