class CreateBuildingStatuses < ActiveRecord::Migration
  def change
    create_table :building_statuses do |t|
    	t.date :associated_date
    	t.belongs_to :base_status
    	t.belongs_to :building

      t.timestamps null: false
    end
  end
end
