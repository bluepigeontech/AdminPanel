class CreateAmmenities < ActiveRecord::Migration
  def change
    create_table :ammenities do |t|
    	t.string :name, :null => false
    	t.boolean :status
    	t.string :ammenity_type
    	
      t.timestamps null: false
    end
  end
end
