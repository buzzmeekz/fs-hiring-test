module BookingHelper

  def total_revenue(bookings)
    total = 0
    bookings.each do |booking|
      total += booking.amount_centavos / 100
    end
    total
  end

  def calculate_fee(booking)
    amount = booking.amount_centavos
    fee = booking.fee_percentage.to_f / 100
    result = (amount * fee) / 100
  end

  def total_fee(bookings)
    total = 0
    bookings.each do |booking|
      total += calculate_fee(booking)
    end
    total
  end

  def total_earnings(bookings)
    total_revenue(bookings) - total_fee(bookings)
  end

end
