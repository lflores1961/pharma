class Product < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :tittle, :description, :image_url, :laboratory, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.99}
  validates :tittle, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|jpeg|png)\Z}i,
    message: 'Debe ser una imagen válida terminada en .GIF, .JPG, .JPEG o .PNG'
  }

  private

    # Ensure there are no 'live' line items referencing this product
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Existen productos pendientes')
        throw :abort
      end
    end
end
