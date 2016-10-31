class CreateBuilderCompanies < ActiveRecord::Migration
  def change
    create_table :builder_companies do |t|

    	t.string :name, :null => false
    	t.string :about
    	
    	t.belongs_to :builder

      t.timestamps null: false
    end
  end
end
