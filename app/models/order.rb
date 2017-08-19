class Order < ApplicationRecord
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
end
