class Meeting < ApplicationRecord
  has_many :requests
  has_many :messages
end
