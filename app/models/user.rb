class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum gender_preference: [:man, :woman]
  enum gender: [:male, :female]
  has_many :requests
  has_many :messages
  has_many :meetings, through: :requests
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, presence: true
  validates :gender_preference, presence: true
  validates :age_preference_from, presence: true, numericality: { greater_than_or_equal_to: 18}
  validates :age_preference_to, presence: true, numericality: { greater_than_or_equal_to: 18}
  validates :photo, presence: true
end
