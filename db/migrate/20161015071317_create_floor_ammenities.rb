class CreateFloorAmmenities < ActiveRecord::Migration
  def change
    create_table :floor_ammenities do |t|
    	t.belongs_to :floor
    	t.belongs_to :base_ammenity
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
