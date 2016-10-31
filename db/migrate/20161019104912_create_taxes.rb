class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
    	t.string :name, :null => false
      	t.float :percentage, :null => false
      	t.belongs_to :state
      	t.belongs_to :city

      t.timestamps null: false
    end
  end
end
