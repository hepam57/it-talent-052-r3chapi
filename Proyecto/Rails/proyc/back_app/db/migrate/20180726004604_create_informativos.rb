class CreateInformativos < ActiveRecord::Migration[5.2]
  def change
    create_table :informativos do |t|

      t.timestamps
    end
  end
end
