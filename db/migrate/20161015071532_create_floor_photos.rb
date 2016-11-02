class CreateFloorPhotos < ActiveRecord::Migration
  def change
    create_table :floor_photos do |t|

    	t.string :name
    	t.text :address
    	t.belongs_to :floor
    	t.integer :file_id

      t.timestamps null: false
    end
  end
end
