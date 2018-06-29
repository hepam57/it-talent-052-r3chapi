class CreateUsuarios < ActiveRecord::Migration[5.0]
	def change
		create_table :usuarios do |t|
			t.string :name
			t.string :last_name
			t.date   :fecha_nacimiento
			t.string :telefono
			t.string :email 
			t.timestamps
		end
	end
end
