class CreateBasePropertyTypes < ActiveRecord::Migration
  def change
    create_table :base_property_types do |t|
    	t.string :name
    	
      t.timestamps null: false
    end
  end
end
