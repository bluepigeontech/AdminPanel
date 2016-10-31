class CreateFloorStageSubStages < ActiveRecord::Migration
  def change
    create_table :floor_stage_sub_stages do |t|

      t.timestamps null: false
    end
  end
end
