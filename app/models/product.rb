class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true, numericality: true
  validates :inventory_count, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
