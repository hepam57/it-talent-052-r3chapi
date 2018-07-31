class AdministradorController < ApplicationController
    def index 
        @etiquetas = Etiqueta.all();
    end
end
