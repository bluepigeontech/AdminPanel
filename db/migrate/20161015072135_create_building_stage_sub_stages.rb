class CreateBuildingStageSubStages < ActiveRecord::Migration
  def change
    create_table :building_stage_sub_stages do |t|

      t.timestamps null: false
    end
  end
end
