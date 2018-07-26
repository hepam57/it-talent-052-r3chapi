class CreateUsuariosEtiquetas < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios_etiquetas do |t|

      t.timestamps
    end
  end
end
