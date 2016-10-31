class CreateFloorStages < ActiveRecord::Migration
  def change
    create_table :floor_stages do |t|

      t.timestamps null: false
    end
  end
end
