class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

    	t.string :name, :null => false
      	t.string :seller_type
      	t.belongs_to :builder
      	t.belongs_to :country
      	t.belongs_to :state
      	t.belongs_to :city
      	t.belongs_to :locality
      	t.text :address
      	t.float :latitude
      	t.float :longitude
      	t.text :description
      	t.text :usp
      	t.date :launch_date
      	t.integer :number_of_buildings
      	t.boolean :status
        t.string :project_type
        t.string :property_type

        t.belongs_to :builder
        t.belongs_to :company

      t.timestamps null: false
    end
  end
end