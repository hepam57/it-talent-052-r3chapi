class CreateLibros < ActiveRecord::Migration[5.0]
  def change
    create_table :libros do |t|
    	t.string :titulo
    	t.date   :fecha_publicacion
    	t.string :numero_paginas
      t.timestamps
    end
  end
end
