class CreateBuildingAmmenities < ActiveRecord::Migration
  def change
    create_table :building_ammenities do |t|

    	t.belongs_to :building
    	t.belongs_to :base_ammenity
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
