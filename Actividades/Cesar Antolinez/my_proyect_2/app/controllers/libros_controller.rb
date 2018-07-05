class LibrosController < ApplicationController
	# quitar autenticacion de seguridad token
	protect_from_forgery unless: -> {request.format.json?}
	def ver_libros
		@libros = Libro.all
	end
	def get_libros
		libros = Libro.all
		response = []
		libros.each do |l|
			response.push({
				id: l.id,
				titulo: l.titulo,
				paginas: l.numero_paginas,
				autor: {
					id: l.autor.id,
					nombre: l.autor.nombre
				}
			})
		end
		render json:{
			libros: response
		}
	end
	def create_libro
		b = eval(request.body.read)
		#Arreglo que resive
		#{
		#	"titulo": "Prueba 2",
		#	"numero_paginas": "30",
		#	"fecha_publicacion": "2018-02-02"
		#}
		libro = Libro.new(b)
		libro.autor = Autor.find(2)
		libro.save
		render json: {
			status: "ok",
			response: libro
		}
	end
end
