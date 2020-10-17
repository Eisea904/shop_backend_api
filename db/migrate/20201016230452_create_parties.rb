class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :party_name
      t.integer :roses
      t.integer :electrum

      t.timestamps
    end
  end
end
