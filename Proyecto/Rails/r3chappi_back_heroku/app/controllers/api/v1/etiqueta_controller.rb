class Api::V1::EtiquetaController < ApiController


  def all
    render json: {
        etiquetas: Etiqueta.all
    }
  end

  def find
    render json: {
        noticias: Etiqueta.find(params[:id]).informativos.all
    }
  end
end