class CreateProjectPhotos < ActiveRecord::Migration
  def change
    create_table :project_photos do |t|

      t.timestamps null: false
    end
  end
end
