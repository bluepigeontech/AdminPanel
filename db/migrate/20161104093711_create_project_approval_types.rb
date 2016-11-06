class CreateProjectApprovalTypes < ActiveRecord::Migration
  def change
    create_table :project_approval_types do |t|
    	t.belongs_to :project
    	t.belongs_to :approval_type

      t.timestamps null: false
    end
  end
end
