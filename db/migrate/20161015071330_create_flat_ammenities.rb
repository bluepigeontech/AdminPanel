class CreateFlatAmmenities < ActiveRecord::Migration
  def change
    create_table :flat_ammenities do |t|

      t.timestamps null: false
    end
  end
end
