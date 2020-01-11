class Category < ApplicationRecord
  has_many :sizes, through: :category_size
  has_many :category_sizes
  has_many :freemarkets
  has_ancestry
end
