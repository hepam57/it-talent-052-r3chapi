class CreateInformativosEtiqueta < ActiveRecord::Migration[5.0]
  def change
    create_table :informativos_etiqueta do |t|

      t.timestamps
    end
  end
end
