class Product < ApplicationRecord
  validates :tittle, :description, :image_url, :laboratory, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.99}
  validates :tittle, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|jpeg|png)\Z}i,
    message: 'Debe ser una imagen válida terminada en .GIF, .JPG, .JPEG o .PNG'
  }
end
