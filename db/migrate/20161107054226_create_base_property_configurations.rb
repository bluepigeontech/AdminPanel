class CreateBasePropertyConfigurations < ActiveRecord::Migration
  def change
    create_table :base_property_configurations do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
