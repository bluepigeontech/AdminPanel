class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
    	t.string :name
    	t.belongs_to :building
    	t.boolean :status
    	t.integer :number_of_flats

      t.timestamps null: false
    end
  end
end
