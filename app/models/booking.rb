class Booking < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/motels/:motel_id/"
  self.element_name = "bookings"
  belongs_to :room
  belongs_to :motel

  # def all_cached
  #   Rails.cache.fetch("bookings", expires_in: 12.hours) do
  #     Booking.where(motel_id: 200).collect
  #   end
  # end
end
