class AddNewToFreemarkets < ActiveRecord::Migration[5.2]
  def change
    add_reference :freemarkets, :user, null: false, foreign_key: true
    add_reference :freemarkets, :item_image, null: false, foreign_key: true
    add_reference :freemarkets, :category, null: false, foreign_key: true
    add_reference :freemarkets, :size, null: false, foreign_key: true
    add_reference :freemarkets, :brand, null: false, foreign_key: true
  end
end
