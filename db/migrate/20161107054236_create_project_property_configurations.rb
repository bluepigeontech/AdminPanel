class CreateProjectPropertyConfigurations < ActiveRecord::Migration
  def change
    create_table :project_property_configurations do |t|
    	t.boolean :status
    	t.belongs_to :project
    	t.belongs_to :base_property_configuration

      t.timestamps null: false
    end
  end
end
