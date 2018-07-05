class LibroController < ApplicationController


protect_from_forgery unless: -> { request.format.json? }

	def libro 
		@libros = Libro.all  
	end

	def get_libros

		libros = Libro.all
		respuesta = []
		libros.each do |l|
			respuesta.push(
				id_libro: l[:id],
				nombre: l[:nombre],
				categoria: l[:categoria],
				editorial: l[:editorial],
				autor:{
					id: l.autor.id,
					nombre_autor: l.autor[:nombre]
				}

				)
		end

		render json: {
			libros: respuesta
		}

	end

	def ver_libros

	end

	def crear_libro
		b = eval(request.body.read)
		datos_autor = {
			nombre: 'Gabo',
			fecha_nacimiento: '01-05-1990'
		}
		a = Autor.new(datos_autor)
		a.save()
    	l = Libro.new(b)
    	l.autor = a
    	l.save()
    	render json: {
    		respuesta: l.id
    	}
    end



	def c_libro_beta
		datos_autor = {
			nombre: 'Pedri',
			fecha_nacimiento: '01-05-1990'
		}
		a = Autor.new(datos_autor)
		a.save
		datos_libro ={
			nombre: 'El principito',
			categoria: 'Fantasia',
			editorial: 'Pepito',
			fecha_publicacion: '01-05-1456',
			autor:a
		}
    	l = Libro.new(datos_libro)
    	l.save
    	render json: {
    		respuesta: 'Hecho'
    	}
    end


end
