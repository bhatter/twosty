class Cuisine < ApplicationRecord
  has_many :restaurants
  has_many :requests
end
