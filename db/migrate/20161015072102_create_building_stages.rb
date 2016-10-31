class CreateBuildingStages < ActiveRecord::Migration
  def change
    create_table :building_stages do |t|

      t.timestamps null: false
    end
  end
end
