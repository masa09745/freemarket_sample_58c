class CreateFreemarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :freemarkets do |t|
      t.string :item, null: false
      t.integer :price, null: false
      t.string :condition, null: false
      t.string :ship_charge, null: false
      t.string :ship_from, null: false
      t.string :ship_method, null: false
      t.string :ship_day, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
