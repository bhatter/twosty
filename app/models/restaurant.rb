class Restaurant < ApplicationRecord
  has_many :requests

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
