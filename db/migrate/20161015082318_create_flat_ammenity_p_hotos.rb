class CreateFlatAmmenityPHotos < ActiveRecord::Migration
  def change
    create_table :flat_ammenity_p_hotos do |t|

      t.timestamps null: false
    end
  end
end
