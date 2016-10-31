class CreateFloorPhotos < ActiveRecord::Migration
  def change
    create_table :floor_photos do |t|

      t.timestamps null: false
    end
  end
end
