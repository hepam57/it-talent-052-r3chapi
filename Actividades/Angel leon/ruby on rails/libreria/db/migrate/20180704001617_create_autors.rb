class CreateAutors < ActiveRecord::Migration[5.0]
  def change
    create_table :autors do |t|
      t.timestamps
    end
  end
end
