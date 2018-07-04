class UserController < ApplicationController
	def user_prueba
		
	end
	def new_user
		
	end
	def new_user_post
		set_params = params.require(:user).permit(
			:firt_name,
			:last_name,
			:address,
			:email,
			:cellphone,
			:citizenship_card,
			:birthdate)
		
		#variable user
		user = User.new(set_params)
		user.save()
	end
end
