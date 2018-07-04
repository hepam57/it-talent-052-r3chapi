class LibroAutor < ActiveRecord::Migration[5.0]
  def change
    add_reference:libros,:autors,index:true
  end
end
