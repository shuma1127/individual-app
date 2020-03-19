class Post < ApplicationRecord
  validates :image, :title, :word, presence: true
end
