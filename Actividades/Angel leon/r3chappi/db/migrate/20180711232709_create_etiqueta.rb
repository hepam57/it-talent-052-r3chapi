class CreateEtiqueta < ActiveRecord::Migration[5.0]
  def change
    create_table :etiqueta do |t|

      t.timestamps
    end
  end
end
