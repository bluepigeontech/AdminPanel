class CreateApprovalTypes < ActiveRecord::Migration
  def change
    create_table :approval_types do |t|

      t.timestamps null: false
    end
  end
end
