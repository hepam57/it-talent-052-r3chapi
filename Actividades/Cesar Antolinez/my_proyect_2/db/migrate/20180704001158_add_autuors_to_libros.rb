class AddAutuorsToLibros < ActiveRecord::Migration[5.0]
  def change
  	add_reference :libros, :autor, index: true
  end
end
