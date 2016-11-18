class CreateBaseOffers < ActiveRecord::Migration
  def change
    create_table :base_offers do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
