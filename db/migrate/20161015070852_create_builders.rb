class CreateBuilders < ActiveRecord::Migration
  def change
    create_table :builders do |t|
    	t.string :group_name, :null => false
    	
      t.timestamps null: false
    end
  end
end
