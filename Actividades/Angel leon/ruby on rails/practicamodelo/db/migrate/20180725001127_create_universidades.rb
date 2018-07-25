class CreateUniversidades < ActiveRecord::Migration[5.2]
  def change
    create_table :universidades do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
