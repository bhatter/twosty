class Meeting < ApplicationRecord
  # belongs_to :chooser_request, class_name: "Request"
  # belongs_to :chosen_request, class_name: "Request"
  has_many :messages
  has_many :users, through: :messages
  has_many :requests

  def other_user_request(user)
    requests.where.not(user: user).first
    # requests.find do |request|
    #   request.user != user
    # end
  end

  def restaurant
    requests.where.not(restaurant_id: nil).first.restaurant
  end

  def other_user(user)
    return nil if requests.where(user: user).empty? # Return nil if user is not in the meeting
    requests.where.not(user: user).first&.user
  end
end
