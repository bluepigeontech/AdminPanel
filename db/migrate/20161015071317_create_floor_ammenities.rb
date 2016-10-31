class CreateFloorAmmenities < ActiveRecord::Migration
  def change
    create_table :floor_ammenities do |t|

      t.timestamps null: false
    end
  end
end
