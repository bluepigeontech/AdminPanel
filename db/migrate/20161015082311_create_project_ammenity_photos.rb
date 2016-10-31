class CreateProjectAmmenityPhotos < ActiveRecord::Migration
  def change
    create_table :project_ammenity_photos do |t|

      t.timestamps null: false
    end
  end
end
