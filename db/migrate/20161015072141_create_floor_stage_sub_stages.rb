class CreateFloorStageSubStages < ActiveRecord::Migration
  def change
    create_table :floor_stage_sub_stages do |t|
    	t.belongs_to :stage
    	t.belongs_to :sub_stage
    	t.float :percentage

      t.timestamps null: false
    end
  end
end
