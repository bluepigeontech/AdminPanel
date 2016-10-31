class CreateStageSubStages < ActiveRecord::Migration
  def change
    create_table :stage_sub_stages do |t|
		t.string :name
    	t.integer :order
    	t.belongs_to :stage
    	t.float :percentage 


      t.timestamps null: false
    end
  end
end
