class CreateCategorieSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :categorie_sizes do |t|
      t.references :category, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.timestamps
    end
  end
end
