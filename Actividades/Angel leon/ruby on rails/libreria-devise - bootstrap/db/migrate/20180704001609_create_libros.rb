class CreateLibros < ActiveRecord::Migration[5.0]
  def change
    
    create_table :libros do |t|
      t.string :nombre
      t.string :categoria
      t.string :editorial
      t.date :fecha_publicacion
      t.timestamps
    end
 
  end
end
