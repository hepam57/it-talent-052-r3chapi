class CreateInformativoEtiquetas < ActiveRecord::Migration[5.2]
  def change
    create_table :informativo_etiquetas do |t|

      t.timestamps
    end
  end
end
