class CreateEtiquetasUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :etiquetas_usuarios do |t|
      
      t.timestamps
    end
  end
end
