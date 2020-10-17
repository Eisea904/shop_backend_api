class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :description
      t.integer :price
      t.boolean :magical
      t.integer :weight

      t.timestamps
    end
  end
end
