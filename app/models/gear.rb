class Gear < ApplicationRecord
  has_many :gears_comments
  belongs_to :users
end
