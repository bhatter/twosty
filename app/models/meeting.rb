class Meeting < ApplicationRecord
  # belongs_to :chooser_request, class_name: "Request"
  # belongs_to :chosen_request, class_name: "Request"
  has_many :messages
  has_many :requests

  def other_user_request(user)
    requests.find do |request|
      request.user != user
    end
  end

  def restaurant
    requests.where.not(restaurant_id: nil).first.restaurant
  end
end
