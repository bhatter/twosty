class Restaurant < ApplicationRecord
  has_many :requests
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
