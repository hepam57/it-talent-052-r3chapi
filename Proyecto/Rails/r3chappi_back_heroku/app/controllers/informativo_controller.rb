class InformativoController < ApplicationController
    def crear
        datos_informativo = params.require(:informativo).permit(:titulo,
        :imagen,
        :descripcion)
    
      e = Editor.first
    
      e.informativos.create(datos_informativo);
      i = Informativo.last
    
    
        datos_etiqueta = params.require(:etiqueta).permit(
        :etiqueta)
    
        etiqueta_id = datos_etiqueta['etiqueta']
    
        informativosetiquetas = {
            informativo_id: i.id,
            etiqueta_id: etiqueta_id
        }
    
        
        
        InformativoEtiqueta.create(informativosetiquetas)    
            redirect_to controller: 'administrador', action: 'index'
        #render json:datos_informativo
        #render json:datos_etiqueta
    
    end
end
