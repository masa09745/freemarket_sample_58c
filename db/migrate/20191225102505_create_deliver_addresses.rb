class CreateDeliverAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :deliver_addresses do |t|
      t.string :postal_code, null: true
      t.integer :prefecture, null: true
      t.string :city, null: true
      t.string :street_address, null: true
      t.string :building_name, null: true
      t.string :phone, null: true
      t.timestamps
    end
  end
end
