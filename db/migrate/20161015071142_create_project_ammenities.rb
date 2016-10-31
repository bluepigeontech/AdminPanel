class CreateProjectAmmenities < ActiveRecord::Migration
  def change
    create_table :project_ammenities do |t|

      t.timestamps null: false
    end
  end
end
