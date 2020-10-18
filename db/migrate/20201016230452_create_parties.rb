class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :party_name, default: "The Party"
      t.integer :roses, default: 100
      t.integer :electrum, default: 250

      t.timestamps
    end
  end
end
