class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|

      #GEOMETRY
      # t.point :coordinates, :null => false
      t.float :latitude
      t.float :longitude
      #VARCHAR(255)
      t.string :name, :null => false
      t.string :short_form
      t.belongs_to :country
      
      #TIMESTAMPS
      t.timestamps
    end
  end
end
