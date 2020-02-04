class ItemImage < ApplicationRecord
  belongs_to :freemarket, optional: true
  mount_uploader :image_url, ImageUploader

  # validate  :picture_size

  # def picture_size
  #   if image_url.size > 5.megabytes
  #     errors.add(:image_url, "サイズが大きすぎます（５MB以下）")
  #   end
  end

end