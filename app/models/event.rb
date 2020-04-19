class Event < ApplicationRecord
  has_many :events_comments
  belongs_to :users
end
