class CreateBaseApprovalTypes < ActiveRecord::Migration
  def change
    create_table :base_approval_types do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
