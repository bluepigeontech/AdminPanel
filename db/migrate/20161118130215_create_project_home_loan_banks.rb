class CreateProjectHomeLoanBanks < ActiveRecord::Migration
  def change
    create_table :project_home_loan_banks do |t|
    	t.belongs_to :project
    	t.belongs_to :base_home_loan_bank
    	t.boolean :status

      t.timestamps null: false
    end
  end
end
