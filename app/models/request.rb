class Request < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  enum price: ["1", "2", "3", "4"]
  enum meal_time: [:lunch, :dinner]
  validates :meal_time, presence: true
  validates :location, presence: true
  validates :meeting_date, presence: true
end
