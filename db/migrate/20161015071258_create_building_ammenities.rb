class CreateBuildingAmmenities < ActiveRecord::Migration
  def change
    create_table :building_ammenities do |t|

      t.timestamps null: false
    end
  end
end
