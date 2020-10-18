class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.boolean :plot, default: false
      t.boolean :magical, default: false
      t.string :itemName, default: ""
      t.string :description, default: ""
      t.string :holder, default: ""
      t.string :category, default: "unsorted"
      t.integer :price, default: 0
      t.integer :weight, default: 0
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
