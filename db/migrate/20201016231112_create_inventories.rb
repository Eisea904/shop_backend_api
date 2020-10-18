class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.belongs_to :party, null: false, foreign_key: true, default: 1
      t.belongs_to :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
