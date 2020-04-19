class Review < ApplicationRecord
  has_many :reviews_comments
  belongs_to :users
  # validates :content, presence: true
  mount_uploader :image, ImageUploader
end
