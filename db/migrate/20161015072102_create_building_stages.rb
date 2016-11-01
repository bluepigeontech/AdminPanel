class CreateBuildingStages < ActiveRecord::Migration
  def change
    create_table :building_stages do |t|
    	t.belongs_to :building
    	t.belongs_to :stage
    	t.float :percentage

      t.timestamps null: false
    end
  end
end
