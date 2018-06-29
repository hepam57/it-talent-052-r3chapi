class UsuarioController < ApplicationController
	def index

	end

	def crear

	end
	def crear_u
		 datos_usuario = params.require(:usuario).permit(:name,
		 												 :last_name,
		 												 :fecha_nacimiento,
		 												 :telefono,
		 												 :email)

		 usuario.new


		puts datos_usuario



     end
end
