class Motel < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
