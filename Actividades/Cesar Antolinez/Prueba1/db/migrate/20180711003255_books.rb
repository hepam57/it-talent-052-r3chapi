class Books < ActiveRecord::Migration[5.1]
  def change
  	create_table :books do |t|
    	t.string :titulo
    	t.date   :fecha_publicacion
    	t.string :numero_paginas
    	t.text   :descripcion
    	t.belongs_to :author
      t.timestamps
    end
  end
end
