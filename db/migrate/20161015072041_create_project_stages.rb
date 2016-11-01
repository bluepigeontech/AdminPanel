class CreateProjectStages < ActiveRecord::Migration
  def change
    create_table :project_stages do |t|
    	t.belongs_to :project
    	t.belongs_to :stage
    	t.float :percentage

      t.timestamps null: false
    end
  end
end
