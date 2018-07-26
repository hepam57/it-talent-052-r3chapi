class CreateAdministradores < ActiveRecord::Migration[5.2]
  def change
    create_table :administradores do |t|

      t.timestamps
    end
  end
end
