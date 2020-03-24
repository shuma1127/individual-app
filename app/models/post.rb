class Post < ApplicationRecord
  validates :image, :title, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user

  def self.search(search)
    return Post.all unless search
    Post.where(['title LIKE ? OR place LIKE ? OR genre LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
  end
end