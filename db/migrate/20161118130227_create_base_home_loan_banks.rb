class CreateBaseHomeLoanBanks < ActiveRecord::Migration
  def change
    create_table :base_home_loan_banks do |t|
    	t.string :name, :null => false
      	t.belongs_to :country
      	t.belongs_to :state
      	t.belongs_to :city
      	t.belongs_to :locality
      	t.text :address
        t.string :contact_person_name
      	t.string :contact_person_email
      	t.text :contact_person_phone

      t.timestamps null: false
    end
  end
end
