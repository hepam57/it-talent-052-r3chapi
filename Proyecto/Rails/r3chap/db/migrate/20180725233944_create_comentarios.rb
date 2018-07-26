class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :co_comentario
      t.timestamps
    end
  end
end
