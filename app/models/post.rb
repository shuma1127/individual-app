class Post < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :images, presence: true

  def self.search(search)
    return Post.all unless search
    Post.where(['title LIKE ? OR place LIKE ? OR genre LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
  end
  
end