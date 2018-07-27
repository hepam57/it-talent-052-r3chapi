class CreateRelationEtiquetasAdministradores < ActiveRecord::Migration[5.2]
  def change
    change_table  :etiquetas do |t|
      t.belongs_to :administradores
    end
  end
end
