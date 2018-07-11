class CamposAutor < ActiveRecord::Migration[5.0]
  def change
    add_column :autors,:nombre,:string
      add_column :autors,:fecha_nacimiento,:date
  end
end
