class CreateFlatAmmenities < ActiveRecord::Migration
  def change
    create_table :flat_ammenities do |t|
    	t.belongs_to :flat
    	t.belongs_to :ammenity
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
