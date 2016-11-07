class CreateFlatStatuses < ActiveRecord::Migration
  def change
    create_table :flat_statuses do |t|
    	t.date :associated_date
    	t.belongs_to :base_status
    	t.belongs_to :flat

      t.timestamps null: false
    end
  end
end
