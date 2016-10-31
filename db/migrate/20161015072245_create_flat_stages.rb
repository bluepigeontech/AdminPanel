class CreateFlatStages < ActiveRecord::Migration
  def change
    create_table :flat_stages do |t|

      t.timestamps null: false
    end
  end
end
