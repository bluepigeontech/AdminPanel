class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      #GEOMETRY
      # t.point :coordinates, :null => false
      t.float :latitude
      t.float :longitude
      #VARCHAR(255)
      t.string :name, :null => false
      t.string :short_form, :null => false
      
      #TIMESTAMPS
      t.timestamps
    end
  end
end
