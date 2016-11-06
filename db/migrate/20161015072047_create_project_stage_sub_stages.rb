class CreateProjectStageSubStages < ActiveRecord::Migration
  def change
    create_table :project_stage_sub_stages do |t|
    	t.belongs_to :stage
    	t.belongs_to :base_sub_stage
    	t.float :percentage
    	
      t.timestamps null: false
    end
  end
end
