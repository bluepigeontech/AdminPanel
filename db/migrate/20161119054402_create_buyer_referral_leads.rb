class CreateBuyerReferralLeads < ActiveRecord::Migration
  def change
    create_table :buyer_referral_leads do |t|
    	t.belongs_to :buyer
    	t.text :content

      t.timestamps null: false
    end
  end
end
