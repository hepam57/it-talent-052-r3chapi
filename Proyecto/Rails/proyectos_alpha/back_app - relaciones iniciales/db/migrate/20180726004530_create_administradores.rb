class CreateAdministradores < ActiveRecord::Migration[5.2]
  def change
    create_table :administradores do |t|
      t.string :us_correo
      t.string :us_contrasena
      t.string :us_nombre
      t.timestamps
    end
  end
end
