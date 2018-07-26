class CreateRelationBetweenUsuariosEtiquetas < ActiveRecord::Migration[5.2]
  def change
    change_table  :usuarios_etiquetas do |t|
      t.belongs_to :usuarios
      t.belongs_to :etiquetas
    end
  end
  
  def change
    change_table  :usuarios do |t|
      t.belongs_to :etiquetas
    end
  end
  
  def change
    change_table  :etiquetas do |t|
      t.belongs_to :usuarios
    end
  end
end
