class Post < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :content, presence: true
  validate :picture_size

  def self.head
    Post.first
  end

  def self.tail
    Post.last(Post.count - 1)
  end

  private

    # Validates the size of an uploaded file
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "La imagen debe ser menor de 5MB")
      end
    end
end
