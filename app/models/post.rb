class Post < ApplicationRecord
  validates :image, :title, :word, presence: true
  mount_uploader :image, ImageUploader
end
