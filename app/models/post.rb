class Post < ApplicationRecord
  validates :image, :title, :word, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end