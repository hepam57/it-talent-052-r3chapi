class CreateUniversidadesLocalidad < ActiveRecord::Migration[5.2]
  def change
    create_table :universidades_localidad do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
