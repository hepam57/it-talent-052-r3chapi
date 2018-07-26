class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :us_correo
      t.string :us_contrasena
      t.string :us_nombre
      t.integer :us_sexo
      t.timestamps
    end
  end
end
