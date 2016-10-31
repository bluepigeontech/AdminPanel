class CreateFlatStageSubStages < ActiveRecord::Migration
  def change
    create_table :flat_stage_sub_stages do |t|

      t.timestamps null: false
    end
  end
end
