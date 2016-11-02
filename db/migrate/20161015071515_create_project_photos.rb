class CreateProjectPhotos < ActiveRecord::Migration
  def change
    create_table :project_photos do |t|
    	t.string :name
    	t.text :address
    	t.belongs_to :project
    	t.integer :file_id

      t.timestamps null: false
    end

    # add_column :projects, :get_url, :string
  end
end
