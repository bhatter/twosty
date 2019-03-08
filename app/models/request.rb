class Request < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, optional: true
  belongs_to :cuisine
  belongs_to :meeting, optional: true
  # has_one :meeting_as_chooser, foreign_key: :chooser_request_id, class_name: "Meeting"
  # has_one :meeting_as_chosen, foreign_key: :chosen_request_id, class_name: "Meeting"
  enum price: ["1", "2", "3", "4"]
  enum meal_time: [:lunch, :dinner]
  validates :location, presence: true
  validates :meeting_date, presence: true
end
