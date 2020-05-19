class Post < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :bookmarks
  has_many :users, through: :bookmarks
  belongs_to :user

  validates :title, presence: true

  def self.search(search)
    return Post.all unless search
    Post.where(['title LIKE ? OR place LIKE ? OR genre LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
  end
  
end