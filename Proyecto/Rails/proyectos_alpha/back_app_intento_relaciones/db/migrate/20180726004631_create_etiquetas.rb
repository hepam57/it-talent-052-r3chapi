class CreateEtiquetas < ActiveRecord::Migration[5.2]
  def change
    create_table :etiquetas do |t|
      t.string :et_nombre
      t.timestamps
    end
  end
end
