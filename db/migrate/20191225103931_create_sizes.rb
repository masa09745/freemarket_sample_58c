class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :item_size, null: false, unique: true
      t.timestamps
    end
  end
end
