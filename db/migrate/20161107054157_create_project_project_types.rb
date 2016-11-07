class CreateProjectProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_project_types do |t|
    	t.boolean :status
    	t.belongs_to :project
    	t.belongs_to :base_project_type

      t.timestamps null: false
    end
  end
end
