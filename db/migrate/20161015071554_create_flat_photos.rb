class CreateFlatPhotos < ActiveRecord::Migration
  def change
    create_table :flat_photos do |t|

    	t.string :name
    	t.text :address
    	t.belongs_to :flat
    	t.integer :file_id

      t.timestamps null: false
    end
  end
end
