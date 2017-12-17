class Product < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  mount_uploader :image_url, ImageUploader
  mount_uploader :tabla_nutricional, TablaNutUploader
  validates :tittle, :description, :image_url, :laboratory, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.99}
  validates :tittle, uniqueness: true
  validate :image_size

  # Avoid errors trying to render empty values
  def safety_catalog
    catalogo_id.nil? ? 0 : catalogo_id
  end

  private

    # Ensure there are no 'live' line items referencing this product
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Existen productos pendientes')
        throw :abort
      end
    end

    def image_size
      if image_url.size > 5.megabytes
        errors.add(:image_url, "La imagen debe ser menor de 5MB")
      end
    end
end
