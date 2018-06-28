class CreateElementos < ActiveRecord::Migration[5.0]
  def change
    create_table :elementos do |t|
      t.string :game
      t.integer :scrore

      t.timestamps
    end
  end
end
