class CreateFlatStages < ActiveRecord::Migration
  def change
    create_table :flat_stages do |t|
    	t.belongs_to :flat
    	t.belongs_to :base_stage
    	t.float :percentage

      t.timestamps null: false
    end
  end
end
