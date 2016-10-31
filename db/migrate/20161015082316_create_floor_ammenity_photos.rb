class CreateFloorAmmenityPhotos < ActiveRecord::Migration
  def change
    create_table :floor_ammenity_photos do |t|

      t.timestamps null: false
    end
  end
end
