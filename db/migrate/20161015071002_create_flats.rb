class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|

    	t.string :name
    	t.date :possession_date
    	t.boolean :status
    	t.string :flat_configuration
    	t.text :saleable_area
    	t.text :carpet_area
      t.text :offer
      t.belongs_to :floor
    	

      t.timestamps null: false
    end
  end
end
