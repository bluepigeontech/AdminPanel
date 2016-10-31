class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|

    	t.string :name, :null => false
    	t.integer :order, :null => false
    	t.string :stage_parent
    	t.float :percentage 

      t.timestamps null: false
    end
  end
end