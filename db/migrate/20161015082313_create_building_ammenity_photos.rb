class CreateBuildingAmmenityPhotos < ActiveRecord::Migration
  def change
    create_table :building_ammenity_photos do |t|

      t.timestamps null: false
    end
  end
end
