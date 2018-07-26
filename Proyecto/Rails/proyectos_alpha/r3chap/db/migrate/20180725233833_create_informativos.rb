class CreateInformativos < ActiveRecord::Migration[5.2]
  def change
    create_table :informativos do |t|
      t.string :in_titulo
      t.string :in_img_hero
      t.string :in_descripcion
      t.integer :c_vistas
      t.integer :in_compartido
      t.timestamps
    end
  end
end
