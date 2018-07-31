class Api::V1::NoticiasController < ApiController

  def all
    render json: {
        noticias: Informativo.all
    }
  end
  def find
    render json: {
        noticia: Informativo.find(params[:id])
    }
  end
  def search
  end
end