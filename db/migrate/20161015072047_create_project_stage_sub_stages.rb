class CreateProjectStageSubStages < ActiveRecord::Migration
  def change
    create_table :project_stage_sub_stages do |t|

      t.timestamps null: false
    end
  end
end
