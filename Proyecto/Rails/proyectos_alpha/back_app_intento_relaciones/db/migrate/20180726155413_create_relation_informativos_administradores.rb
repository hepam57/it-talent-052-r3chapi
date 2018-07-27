class CreateRelationInformativosAdministradores < ActiveRecord::Migration[5.2]
  def change
    change_table  :informativos do |t|
      t.belongs_to :administradores
    end
  end
end
