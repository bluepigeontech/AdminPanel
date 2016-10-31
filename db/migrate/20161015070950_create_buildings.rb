class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|

    	t.string :name, :null => false
      	t.string :status
      	t.integer :number_of_floors
      	t.belongs_to :project

      t.timestamps null: false
    end
  end
end
