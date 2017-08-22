class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum pay_type: {
    "Cheque"              => 0,
    "Tarjeta de Crédito"  => 1,
    "Orden de compra"     => 2,
    "Efectivo"            => 3,
    "Crédito Zi"          => 4,
    "Crédito ISE"         => 5
  }

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
