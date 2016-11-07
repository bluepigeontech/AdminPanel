class CreateBaseStatuses < ActiveRecord::Migration
  def change
    create_table :base_statuses do |t|
    	t.string :name
    	t.string :status_type

      t.timestamps null: false
    end
  end
end
