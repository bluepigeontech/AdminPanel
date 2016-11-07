class CreateBaseProjectTypes < ActiveRecord::Migration
  def change
    create_table :base_project_types do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
