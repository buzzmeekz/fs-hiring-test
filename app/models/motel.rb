class Motel < ApplicationRecord
  has_many :rooms
  has_many :bookings
  belongs_to :user
end
