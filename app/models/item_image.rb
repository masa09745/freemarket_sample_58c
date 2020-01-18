class ItemImage < ApplicationRecord
  belongs_to :freemarket, optional: true
  mount_uploader :image_url, ImageUploader
end