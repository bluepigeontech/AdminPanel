class CreateBuildingStageSubStages < ActiveRecord::Migration
  def change
    create_table :building_stage_sub_stages do |t|
    	t.belongs_to :stage
    	t.belongs_to :sub_stage
    	t.float :percentage

      t.timestamps null: false
    end
  end
end
