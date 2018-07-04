class LibrosController < ApplicationController
	def ver_libros
		@libros = Libro.all
	end
end
