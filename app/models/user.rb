class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password

  after_destroy :ensure_an_admin_remains

  class Error < StandardError
  end

  private

    def ensure_an_admin_remains
      if User.count.zero?
        raise Error.new "No se puede eliminar al último usuario."
      end
    end
end
