class CreateRelationComentariosInformativosAndComentariosUsuarios < ActiveRecord::Migration[5.2]


  def change
    change_table  :comentarios do |t|
      t.belongs_to :usuarios
      t.belongs_to :informativos
    end
  end

end
