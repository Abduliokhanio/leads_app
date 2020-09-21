class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.integer :owner_id
      t.string :lead_name
      t.string :lead_number
      t.string :lead_email
      t.string :lead_web
      t.string :lead_temp

      t.timestamps
    end
  end
end
