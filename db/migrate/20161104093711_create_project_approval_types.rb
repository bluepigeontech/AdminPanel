class CreateProjectApprovalTypes < ActiveRecord::Migration
  def change
    create_table :project_approval_types do |t|
    	t.belongs_to :project
    	t.belongs_to :base_approval_type
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
