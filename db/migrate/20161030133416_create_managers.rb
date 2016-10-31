class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|

    	t.string :name
    	t.string :password
    	t.text :email
      t.float :phone
    	t.boolean :verified
      t.belongs_to :role
    	
      t.timestamps null: false
    end
    add_index :managers, :email, :unique => true
  end
end
