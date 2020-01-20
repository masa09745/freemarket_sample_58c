class CreateDeliverAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :deliver_addresses do |t|
      t.integer :postal_code, null: false
      t.integer :prefecture, null: false
      t.string :city, null: false
      t.string :street_address, null: false
      t.string :building_name, null: true
      t.integer :phone, null: true
      t.timestamps
    end
  end
end
