class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def index
    @user = current_user
    @bookings = @user.bookings.order('created_at DESC').limit(10)
  end
end
