class CreateBuildingPhotos < ActiveRecord::Migration
  def change
    create_table :building_photos do |t|
    	t.string :name
    	t.text :address
    	t.belongs_to :building
    	t.integer :file_id

      t.timestamps null: false
    end
  end
end
