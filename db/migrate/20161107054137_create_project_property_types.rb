class CreateProjectPropertyTypes < ActiveRecord::Migration
  def change
    create_table :project_property_types do |t|
    	t.boolean :status
    	t.belongs_to :project
    	t.belongs_to :base_property_type

      t.timestamps null: false
    end
  end
end
