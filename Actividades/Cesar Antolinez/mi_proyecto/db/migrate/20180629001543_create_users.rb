class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :firt_name
    	t.string :citizenship_card
    	t.string :last_name
    	t.string :email
    	t.string :address
    	t.string :cellphone
    	t.date :birthdate

      t.timestamps
    end
  end
end
