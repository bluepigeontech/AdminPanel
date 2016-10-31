class CreateFlatPhotos < ActiveRecord::Migration
  def change
    create_table :flat_photos do |t|

      t.timestamps null: false
    end
  end
end
