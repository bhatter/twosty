class Meeting < ApplicationRecord
  belongs_to :chooser_request, class_name: "Request"
  belongs_to :chosen_request, class_name: "Request"
  has_many :messages
end
