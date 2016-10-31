class CreateBuilderCompanyContactPeople < ActiveRecord::Migration
  def change
    create_table :builder_company_contact_people do |t|

    	t.string :name, :null => false
    	t.string :email
    	t.text :phone_number

    	t.belongs_to :company

      t.timestamps null: false
    end
  end
end
