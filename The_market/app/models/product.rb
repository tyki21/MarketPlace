class Product < ApplicationRecord
  validates :name, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png) \Z}i,
    message: 'Must be a URL for a GIF, JPG, or PNG image.'
  }

  belongs_to :user
end
