class CreateProjectOffers < ActiveRecord::Migration
  def change
    create_table :project_offers do |t|
    	t.belongs_to :base_offer
    	t.belongs_to :project
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
