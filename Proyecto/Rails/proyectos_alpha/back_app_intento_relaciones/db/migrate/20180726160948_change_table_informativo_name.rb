class ChangeTableInformativoName < ActiveRecord::Migration[5.2]
  def change
    rename_table :informativo_etiquetas, :informativos_etiquetas
  end
end
