class CreateUsuariosEtiquetas < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios_etiquetas do |t|
      t.belongs_to :usuarios
      t.belongs_to :etiquetas
      t.timestamps
    end
  end
end
