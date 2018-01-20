class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :motel
end
