class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
    	t.string :name
    	t.text :access_control_list

      t.timestamps null: false
    end
  end
end
