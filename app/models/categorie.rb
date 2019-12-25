class Categorie < ApplicationRecord
  has_many :size, through: :category_sizes
  has_many :category_sizes
  has_many :freemarkets
  has_ancestry
end
