class CreateStageSubStages < ActiveRecord::Migration
  def change
    create_table :base_stage_sub_stages do |t|
		t.string :name
    	t.integer :order
    	t.belongs_to :base_stage
    	t.float :percentage 


      t.timestamps null: false
    end
  end
end
