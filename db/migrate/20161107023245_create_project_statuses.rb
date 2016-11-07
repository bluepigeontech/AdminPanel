class CreateProjectStatuses < ActiveRecord::Migration
  def change
    create_table :project_statuses do |t|
    	t.date :associated_date
    	t.belongs_to :base_status
    	t.belongs_to :project

      t.timestamps null: false
    end
  end
end
