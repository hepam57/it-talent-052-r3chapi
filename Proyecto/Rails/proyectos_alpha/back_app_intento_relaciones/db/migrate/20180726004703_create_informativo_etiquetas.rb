class CreateInformativoEtiquetas < ActiveRecord::Migration[5.2]
  def change
    create_table :informativo_etiquetas do |t|
      t.belongs_to :informativos
      t.belongs_to :etiquetas
      t.timestamps
    end
  end
end
