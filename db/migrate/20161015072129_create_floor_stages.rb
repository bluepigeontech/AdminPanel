class CreateFloorStages < ActiveRecord::Migration
  def change
    create_table :floor_stages do |t|
    	t.belongs_to :floor
    	t.belongs_to :stage
    	t.float :percentage

      t.timestamps null: false
    end
  end
end
