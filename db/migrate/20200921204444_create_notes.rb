class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :lead_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
