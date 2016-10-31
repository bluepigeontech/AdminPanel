class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|

      #GEOMETRY
      # t.point :coordinates, :null => false
      t.float :latitude
      t.float :longitude
      #VARCHAR(255)
      t.string :name, :null => false
      t.string :short_form

      t.belongs_to :city
      
      #TIMESTAMPS
      t.timestamps
    end
  end
end
