class CreateEditores < ActiveRecord::Migration[5.2]
  def change
    create_table :editores do |t|

      t.timestamps
    end
  end
end
