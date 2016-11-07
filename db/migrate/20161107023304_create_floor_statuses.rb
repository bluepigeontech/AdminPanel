class CreateFloorStatuses < ActiveRecord::Migration
  def change
    create_table :floor_statuses do |t|
    	t.date :associated_date
    	t.belongs_to :base_status
    	t.belongs_to :floor

      t.timestamps null: false
    end
  end
end
