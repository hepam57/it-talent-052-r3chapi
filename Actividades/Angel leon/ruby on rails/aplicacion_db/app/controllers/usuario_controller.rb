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

		usuario = Usuario.new(datos_usuario)
		crear_usuario = usuario.save()

		if crear_usuario
			redirect_to controller: 'Usuario', action: 'ver'
		else

		end


     end
end
