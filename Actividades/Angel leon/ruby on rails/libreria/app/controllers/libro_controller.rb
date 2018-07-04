class LibroController < ApplicationController
    def libro 
        @libros = Libro.all  
    end
end
