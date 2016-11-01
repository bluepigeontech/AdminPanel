class CreateProjectAmmenities < ActiveRecord::Migration
  def change
    create_table :project_ammenities do |t|
    	t.belongs_to :project
    	t.belongs_to :ammenity
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
