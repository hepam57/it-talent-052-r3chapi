class Authors < ActiveRecord::Migration[5.1]
  def change
  	create_table :autors do |t|
    	t.string :nombre
    	t.date   :fecha_nacimineto
    	t.string :cedula
      t.timestamps
  	end
  end
end
