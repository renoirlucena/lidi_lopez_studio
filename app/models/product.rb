# app/models/product.rb
class Product < ApplicationRecord
  # Attributes
  attribute :name, :string
  attribute :description, :text
  attribute :price, :decimal

  # Validations
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
